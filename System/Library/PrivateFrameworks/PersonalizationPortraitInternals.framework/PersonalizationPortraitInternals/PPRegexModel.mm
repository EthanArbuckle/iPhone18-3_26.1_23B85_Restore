@interface PPRegexModel
- (PPRegexModel)initWithModelDescription:(id)description parameterDictionary:(id)dictionary error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
@end

@implementation PPRegexModel

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  v42[1] = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  optionsCopy = options;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v32[3] = mach_absolute_time();
  v10 = [featuresCopy featureValueForName:self->_inputName];
  stringValue = [v10 stringValue];

  if (stringValue)
  {
    regex = self->_regex;
    v13 = [stringValue length];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __53__PPRegexModel_predictionFromFeatures_options_error___block_invoke;
    v27[3] = &unk_278979378;
    v30 = &v33;
    v31 = v32;
    v28 = stringValue;
    selfCopy = self;
    [(NSRegularExpression *)regex enumerateMatchesInString:v28 options:1 range:0 usingBlock:v13, v27];
    v14 = objc_alloc(MEMORY[0x277CBFED0]);
    outputName = self->_outputName;
    v15 = [MEMORY[0x277CCABB0] numberWithBool:*(v34 + 24)];
    v37 = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    v17 = [PPCoreMLUtils _multiArrayForNumberArray:v16];
    v39 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&outputName count:1];
    v19 = [v14 initWithDictionary:v18 error:error];

    v20 = v28;
  }

  else
  {
    *(v34 + 24) = 1;
    v21 = objc_alloc(MEMORY[0x277CBFED0]);
    v41 = self->_outputName;
    v20 = [MEMORY[0x277CCABB0] numberWithBool:*(v34 + 24)];
    v40 = v20;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
    v23 = [PPCoreMLUtils _multiArrayForNumberArray:v22];
    v42[0] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    v19 = [v21 initWithDictionary:v24 error:error];
  }

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(&v33, 8);

  v25 = *MEMORY[0x277D85DE8];

  return v19;
}

void __53__PPRegexModel_predictionFromFeatures_options_error___block_invoke(void *a1, void *a2, char a3, _BYTE *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (v7)
  {
    v8 = pp_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v13 = a1[4];
      v14 = 138412290;
      v15 = v13;
      _os_log_debug_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEBUG, "Blocked (pattern): %@", &v14, 0xCu);
    }

    *(*(a1[6] + 8) + 24) = 1;
LABEL_5:
    *a4 = 1;
    goto LABEL_11;
  }

  if ((a3 & 1) != 0 && (mach_absolute_time() - *(*(a1[7] + 8) + 24)) >> 5 >= 0xC35)
  {
    v9 = pp_default_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      v11 = *(a1[5] + 8);
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "WARNING: aborting blocking regex %@ due to long-running match against %@.", &v14, 0x16u);
    }

    goto LABEL_5;
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
}

- (PPRegexModel)initWithModelDescription:(id)description parameterDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = PPRegexModel;
  v8 = [(PPRegexModel *)&v18 init];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CCAC68]);
    v10 = [dictionaryCopy objectForKeyedSubscript:@"regex"];
    v11 = [v9 initWithPattern:v10 options:1 error:error];
    regex = v8->_regex;
    v8->_regex = v11;

    v13 = [dictionaryCopy objectForKeyedSubscript:@"inputName"];
    inputName = v8->_inputName;
    v8->_inputName = v13;

    v15 = [dictionaryCopy objectForKeyedSubscript:@"outputName"];
    outputName = v8->_outputName;
    v8->_outputName = v15;
  }

  return v8;
}

@end