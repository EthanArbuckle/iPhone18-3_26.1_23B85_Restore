@interface WBSCreditCardImporter
- (BOOL)_checkNotAtRootLevel;
- (BOOL)_isParsingCreditCard;
- (BOOL)_isParsingCreditCardArray;
- (BOOL)jsonReader:(id)a3 scalarValue:(id)a4;
- (BOOL)jsonReaderBeginArray:(id)a3;
- (BOOL)jsonReaderBeginObject:(id)a3;
- (BOOL)jsonReaderEndArray:(id)a3;
- (BOOL)jsonReaderEndObject:(id)a3;
- (BOOL)parseFileHandle:(id)a3 error:(id *)a4;
- (BOOL)parseURL:(id)a3 error:(id *)a4;
- (WBSCreditCardImporterDelegate)delegate;
- (id)_popKeyFromStackIfPossible;
- (id)_sanitizedCardNumberFromImportedCardNumber:(id)a3;
@end

@implementation WBSCreditCardImporter

- (BOOL)parseURL:(id)a3 error:(id *)a4
{
  v6 = [MEMORY[0x1E696AC00] safari_fileHandleWithURL:a3 options:0 createMode:0 error:a4];
  if (v6)
  {
    v7 = [(WBSCreditCardImporter *)self parseFileHandle:v6 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)parseFileHandle:(id)a3 error:(id *)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *a4 = 0;
  }

  v6 = a3;
  v7 = objc_alloc_init(WBSJSONReader);
  [(WBSJSONReader *)v7 setDelegate:self];
  lastError = self->_lastError;
  self->_lastError = 0;

  v9 = [MEMORY[0x1E695DF70] array];
  stack = self->_stack;
  self->_stack = v9;

  self->_foundCreditCardArray = 0;
  v11 = [(WBSJSONReader *)v7 parseFileHandle:v6 error:a4];

  v12 = self->_lastError;
  if (!self->_foundCreditCardArray && !v12)
  {
    v13 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A578];
    v21[0] = @"Could not find credit card array in JSON file";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v15 = [v13 errorWithDomain:@"com.apple.Safari.Core.WBSCreditCardImporterErrorDomain" code:2 userInfo:v14];
    v16 = self->_lastError;
    self->_lastError = v15;

    v11 = 0;
    v12 = self->_lastError;
  }

  if (a4 && !*a4)
  {
    v12 = v12;
    *a4 = v12;
  }

  v17 = v12 == 0;

  v18 = *MEMORY[0x1E69E9840];
  return v17 && v11;
}

- (BOOL)_checkNotAtRootLevel
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_stack count];
  if (!v3)
  {
    v4 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = @"Root node is expected to be a dictionary";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v6 = [v4 errorWithDomain:@"com.apple.Safari.Core.WBSCreditCardImporterErrorDomain" code:1 userInfo:v5];
    lastError = self->_lastError;
    self->_lastError = v6;
  }

  result = v3 != 0;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_isParsingCreditCardArray
{
  v6[3] = *MEMORY[0x1E69E9840];
  stack = self->_stack;
  v6[0] = &unk_1F308E1B0;
  v6[1] = @"payment_cards";
  v6[2] = &unk_1F308E1C8;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  LOBYTE(stack) = [(NSMutableArray *)stack isEqual:v3];

  v4 = *MEMORY[0x1E69E9840];
  return stack;
}

- (BOOL)_isParsingCreditCard
{
  v6[4] = *MEMORY[0x1E69E9840];
  stack = self->_stack;
  v6[0] = &unk_1F308E1B0;
  v6[1] = @"payment_cards";
  v6[2] = &unk_1F308E1C8;
  v6[3] = &unk_1F308E1B0;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
  LOBYTE(stack) = [(NSMutableArray *)stack isEqual:v3];

  v4 = *MEMORY[0x1E69E9840];
  return stack;
}

- (id)_popKeyFromStackIfPossible
{
  v3 = [(NSMutableArray *)self->_stack lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(NSMutableArray *)self->_stack lastObject];
    [(NSMutableArray *)self->_stack removeLastObject];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)jsonReader:(id)a3 scalarValue:(id)a4
{
  v6 = a4;
  v7 = [(WBSCreditCardImporter *)self _checkNotAtRootLevel];
  if (v7)
  {
    v8 = [(WBSCreditCardImporter *)self _popKeyFromStackIfPossible];
    if ([v8 isEqualToString:@"card_number"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = 32;
    }

    else if ([v8 isEqualToString:@"card_name"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = 40;
    }

    else if ([v8 isEqualToString:@"cardholder_name"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = 48;
    }

    else if ([v8 isEqualToString:@"card_expiration_month"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = 56;
    }

    else if ([v8 isEqualToString:@"card_expiration_year"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = 64;
    }

    else
    {
      if (![v8 isEqualToString:@"card_last_used_time_usec"])
      {
        goto LABEL_21;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_21;
      }

      v9 = 72;
    }

    objc_storeStrong((&self->super.isa + v9), a4);
LABEL_21:
  }

  return v7;
}

- (BOOL)jsonReaderBeginArray:(id)a3
{
  v4 = [(WBSCreditCardImporter *)self _checkNotAtRootLevel];
  if (v4)
  {
    [(NSMutableArray *)self->_stack addObject:&unk_1F308E1C8];
    if ([(WBSCreditCardImporter *)self _isParsingCreditCardArray])
    {
      self->_foundCreditCardArray = 1;
    }
  }

  return v4;
}

- (BOOL)jsonReaderBeginObject:(id)a3
{
  [(NSMutableArray *)self->_stack addObject:&unk_1F308E1B0];
  if ([(WBSCreditCardImporter *)self _isParsingCreditCard])
  {
    cardNumber = self->_cardNumber;
    self->_cardNumber = 0;

    cardName = self->_cardName;
    self->_cardName = 0;

    cardholderName = self->_cardholderName;
    self->_cardholderName = 0;

    expirationDateMonth = self->_expirationDateMonth;
    self->_expirationDateMonth = 0;

    expirationDateYear = self->_expirationDateYear;
    self->_expirationDateYear = 0;

    lastUsedDateTimeInterval = self->_lastUsedDateTimeInterval;
    self->_lastUsedDateTimeInterval = 0;
  }

  return 1;
}

- (BOOL)jsonReaderEndArray:(id)a3
{
  [(NSMutableArray *)self->_stack removeLastObject];
  v4 = [(WBSCreditCardImporter *)self _popKeyFromStackIfPossible];
  return 1;
}

- (BOOL)jsonReaderEndObject:(id)a3
{
  if ([(WBSCreditCardImporter *)self _isParsingCreditCard])
  {
    v4 = [(WBSCreditCardImporter *)self _sanitizedCardNumberFromImportedCardNumber:self->_cardNumber];
    if (v4)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      cardName = self->_cardName;
      cardholderName = self->_cardholderName;
      expirationDateMonth = self->_expirationDateMonth;
      expirationDateYear = self->_expirationDateYear;
      lastUsedDateTimeInterval = self->_lastUsedDateTimeInterval;
      if (lastUsedDateTimeInterval)
      {
        v11 = MEMORY[0x1E695DF00];
        [(NSNumber *)lastUsedDateTimeInterval doubleValue];
        v13 = [v11 dateWithTimeIntervalSince1970:v12 / 1000000.0];
        [WeakRetained importCreditCardDataWithCardNumber:v4 cardName:cardName cardholderName:cardholderName cardExpirationMonth:expirationDateMonth cardExpirationYear:expirationDateYear lastUsedDate:v13];
      }

      else
      {
        [WeakRetained importCreditCardDataWithCardNumber:v4 cardName:self->_cardName cardholderName:self->_cardholderName cardExpirationMonth:self->_expirationDateMonth cardExpirationYear:self->_expirationDateYear lastUsedDate:0];
      }
    }

    else
    {
      v14 = WBS_LOG_CHANNEL_PREFIXImport();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [WBSCreditCardImporter jsonReaderEndObject:v14];
      }
    }
  }

  [(NSMutableArray *)self->_stack removeLastObject];
  v15 = [(WBSCreditCardImporter *)self _popKeyFromStackIfPossible];
  return 1;
}

- (id)_sanitizedCardNumberFromImportedCardNumber:(id)a3
{
  if (a3)
  {
    v3 = WBSNormalizedCreditCardNumber(a3);
    if ([v3 length])
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (WBSCreditCardImporterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end