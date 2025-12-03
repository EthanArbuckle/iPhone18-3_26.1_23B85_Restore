@interface WBSCreditCardExporter
- (WBSCreditCardExporter)initWithJSONWriter:(id)writer error:(id *)error;
- (void)addEntryWithCardNumber:(id)number cardName:(id)name cardholderName:(id)cardholderName cardExpirationMonth:(id)month cardExpirationYear:(id)year lastUsedDate:(id)date;
- (void)finishWithCompletionHandler:(id)handler;
@end

@implementation WBSCreditCardExporter

- (WBSCreditCardExporter)initWithJSONWriter:(id)writer error:(id *)error
{
  writerCopy = writer;
  v10.receiver = self;
  v10.super_class = WBSCreditCardExporter;
  v7 = [(WBSJSONExporter *)&v10 initWithJSONWriter:writerCopy error:error];
  if (v7 && [writerCopy beginArrayForKey:@"payment_cards" error:error])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)addEntryWithCardNumber:(id)number cardName:(id)name cardholderName:(id)cardholderName cardExpirationMonth:(id)month cardExpirationYear:(id)year lastUsedDate:(id)date
{
  nameCopy = name;
  cardholderNameCopy = cardholderName;
  monthCopy = month;
  yearCopy = year;
  dateCopy = date;
  numberCopy = number;
  jsonWriter = [(WBSJSONExporter *)self jsonWriter];
  v47 = 0;
  [jsonWriter appendAndBeginObjectWithError:&v47];
  v21 = v47;

  jsonWriter2 = [(WBSJSONExporter *)self jsonWriter];
  v46 = v21;
  [jsonWriter2 addEntry:numberCopy forKey:@"card_number" error:&v46];

  v23 = v46;
  if ([nameCopy length])
  {
    jsonWriter3 = [(WBSJSONExporter *)self jsonWriter];
    v45 = v23;
    [jsonWriter3 addEntry:nameCopy forKey:@"card_name" error:&v45];
    v25 = v45;

    v23 = v25;
  }

  if ([cardholderNameCopy length])
  {
    jsonWriter4 = [(WBSJSONExporter *)self jsonWriter];
    v44 = v23;
    [jsonWriter4 addEntry:cardholderNameCopy forKey:@"cardholder_name" error:&v44];
    v27 = v44;

    v23 = v27;
  }

  if (monthCopy && [monthCopy intValue])
  {
    jsonWriter5 = [(WBSJSONExporter *)self jsonWriter];
    v43 = v23;
    [jsonWriter5 addEntry:monthCopy forKey:@"card_expiration_month" error:&v43];
    v29 = v43;

    v23 = v29;
  }

  if (yearCopy && [yearCopy intValue])
  {
    jsonWriter6 = [(WBSJSONExporter *)self jsonWriter];
    v42 = v23;
    [jsonWriter6 addEntry:yearCopy forKey:@"card_expiration_year" error:&v42];
    v31 = v42;

    v23 = v31;
  }

  if (dateCopy)
  {
    [dateCopy timeIntervalSince1970];
    v33 = v32 * 1000000.0;
    jsonWriter7 = [(WBSJSONExporter *)self jsonWriter];
    v35 = [MEMORY[0x1E696AD98] numberWithDouble:v33];
    v41 = v23;
    [jsonWriter7 addEntry:v35 forKey:@"card_last_used_time_usec" error:&v41];
    v36 = v41;

    v23 = v36;
  }

  jsonWriter8 = [(WBSJSONExporter *)self jsonWriter];
  v40 = v23;
  [jsonWriter8 closeCurrentEntryWithError:&v40];
  v38 = v40;

  if (v38)
  {
    v39 = WBS_LOG_CHANNEL_PREFIXExport();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [WBSCreditCardExporter addEntryWithCardNumber:v39 cardName:v38 cardholderName:? cardExpirationMonth:? cardExpirationYear:? lastUsedDate:?];
    }
  }
}

- (void)finishWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__WBSCreditCardExporter_finishWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CF2CC0;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WBSCreditCardExporter;
  v5 = handlerCopy;
  [(WBSJSONExporter *)&v6 finishWithCompletionHandler:v7];
}

void __53__WBSCreditCardExporter_finishWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXExport();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __53__WBSCreditCardExporter_finishWithCompletionHandler___block_invoke_cold_1(v4, v3);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)addEntryWithCardNumber:(void *)a1 cardName:(void *)a2 cardholderName:cardExpirationMonth:cardExpirationYear:lastUsedDate:.cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2(&dword_1B8447000, v5, v6, "Failed to serialize credit card entry: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

void __53__WBSCreditCardExporter_finishWithCompletionHandler___block_invoke_cold_1(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2(&dword_1B8447000, v5, v6, "Failed to finalize saved credit cards export: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

@end