@interface REMNLQueryParser
- (REMNLQueryParser)initWithLocale:(id)a3 referenceDate:(id)a4 referenceTimeZone:(id)a5 forTesting:(BOOL)a6;
- (id)parseString:(id)a3;
- (id)parserManagerTestOptions;
@end

@implementation REMNLQueryParser

- (REMNLQueryParser)initWithLocale:(id)a3 referenceDate:(id)a4 referenceTimeZone:(id)a5 forTesting:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v19.receiver = self;
  v19.super_class = REMNLQueryParser;
  v14 = [(REMNLQueryParser *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_timeZone, a5);
    objc_storeStrong(&v15->_locale, a3);
    if (v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = [MEMORY[0x277CBEAA8] date];
    }

    referenceDate = v15->_referenceDate;
    v15->_referenceDate = v16;

    v15->_forTesting = a6;
  }

  return v15;
}

- (id)parseString:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v5 = 0;
  v15 = objc_opt_new();
  if (self->_forTesting)
  {
    v5 = [(REMNLQueryParser *)self parserManagerTestOptions];
  }

  v6 = [MEMORY[0x277D43E20] remindersParserManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __32__REMNLQueryParser_parseString___block_invoke;
  v9[3] = &unk_2788BC4E8;
  v9[4] = &v10;
  [v6 enumerateParseResultsForString:v4 options:v5 withBlock:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)parserManagerTestOptions
{
  v15[7] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v4 = *MEMORY[0x277D44908];
  v5 = *MEMORY[0x277D43E68];
  v14[0] = *MEMORY[0x277D43E60];
  v14[1] = v5;
  v15[0] = v4;
  v15[1] = @"com.apple.reminders.parser";
  v6 = *MEMORY[0x277D43E88];
  v14[2] = *MEMORY[0x277D43E70];
  v14[3] = v6;
  referenceDate = self->_referenceDate;
  v15[2] = &unk_2845110B8;
  v15[3] = referenceDate;
  locale = self->_locale;
  v9 = *MEMORY[0x277D43E78];
  v14[4] = *MEMORY[0x277D43E80];
  v14[5] = v9;
  v15[4] = locale;
  v15[5] = MEMORY[0x277CBEC38];
  v14[6] = @"forTesting";
  v15[6] = MEMORY[0x277CBEC38];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:7];
  v11 = [v3 dictionaryWithDictionary:v10];

  timeZone = self->_timeZone;
  if (timeZone)
  {
    [v11 setObject:timeZone forKeyedSubscript:*MEMORY[0x277D43E90]];
  }

  return v11;
}

@end