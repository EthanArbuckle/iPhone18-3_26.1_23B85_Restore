@interface UPLoadedModelConfiguration
- (UPLoadedModelConfiguration)initWithModelConfiguration:(id)a3;
- (void)dealloc;
@end

@implementation UPLoadedModelConfiguration

- (void)dealloc
{
  labelToValueType = self->_labelToValueType;
  if (labelToValueType)
  {
    v4 = std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::~__hash_table(labelToValueType);
    MEMORY[0x223DC4D00](v4, 0x10A0C408EF24B1CLL);
  }

  resolver = self->_resolver;
  if (resolver)
  {
    v6 = std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,uaap_orchestration::resolution::InverseResolutionTable>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,uaap_orchestration::resolution::InverseResolutionTable>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,uaap_orchestration::resolution::InverseResolutionTable>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,uaap_orchestration::resolution::InverseResolutionTable>>>::~__hash_table(resolver);
    MEMORY[0x223DC4D00](v6, 0x10A0C408EF24B1CLL);
  }

  beamMaskInput = self->_beamMaskInput;
  if (beamMaskInput)
  {
    std::__hash_table<std::__hash_value_type<unsigned long,std::set<unsigned long>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::set<unsigned long>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::set<unsigned long>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::set<unsigned long>>>>::~__hash_table((beamMaskInput + 112));
    std::__hash_table<std::__hash_value_type<unsigned long,std::set<unsigned long>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::set<unsigned long>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::set<unsigned long>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::set<unsigned long>>>>::~__hash_table((beamMaskInput + 72));
    v12 = (beamMaskInput + 48);
    std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v12);
    v8 = *(beamMaskInput + 3);
    if (v8)
    {
      *(beamMaskInput + 4) = v8;
      operator delete(v8);
    }

    v12 = beamMaskInput;
    std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v12);
    MEMORY[0x223DC4D00](beamMaskInput, 0x10A0C401A1B986CLL);
  }

  parserEspressoModule = self->_parserEspressoModule;
  if (parserEspressoModule)
  {
    uaap::EspressoModule::~EspressoModule(parserEspressoModule);
    MEMORY[0x223DC4D00]();
  }

  calibrationEspressoModule = self->_calibrationEspressoModule;
  if (calibrationEspressoModule)
  {
    uaap::EspressoModule::~EspressoModule(calibrationEspressoModule);
    MEMORY[0x223DC4D00]();
  }

  v11.receiver = self;
  v11.super_class = UPLoadedModelConfiguration;
  [(UPLoadedModelConfiguration *)&v11 dealloc];
}

- (UPLoadedModelConfiguration)initWithModelConfiguration:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v4 = SNLPOSLoggerForCategory(7);
  v5 = os_signpost_id_generate(v4);

  v6 = SNLPOSLoggerForCategory(7);
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22284A000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "UPLoadedModelConfigurationInit", "", buf, 2u);
  }

  v8 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEFAULT, "BEGIN UPLoadedModelConfigurationInit", buf, 2u);
  }

  v35.receiver = self;
  v35.super_class = UPLoadedModelConfiguration;
  v9 = [(UPLoadedModelConfiguration *)&v35 init];

  if (v9)
  {
    v10 = [v31 intentVocabPath];
    intentVocabPath = v9->_intentVocabPath;
    v9->_intentVocabPath = v10;

    v12 = [v31 bioLabelsVocabPath];
    bioLabelsVocabPath = v9->_bioLabelsVocabPath;
    v9->_bioLabelsVocabPath = v12;

    v14 = MEMORY[0x277CBEAC0];
    v15 = [v31 configPath];
    v30 = [v14 dictionaryWithContentsOfFile:v15];

    [v30 objectForKeyedSubscript:@"locale"];
    v16 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:objc_claimAutoreleasedReturnValue()];
    locale = v9->_locale;
    v9->_locale = v16;

    v18 = [v30 objectForKeyedSubscript:@"app_bundle"];
    bundleId = v9->_bundleId;
    v9->_bundleId = v18;

    v20 = [v31 spanVocabPath];
    v21 = v20;
    std::string::basic_string[abi:ne200100]<0>(&v34, [v20 UTF8String]);

    v22 = [v31 grammarPath];
    v23 = v22;
    std::string::basic_string[abi:ne200100]<0>(v33, [v22 UTF8String]);

    uaap_orchestration::grammar::UaapGrammar::fromFile(v33);
  }

  v24 = SNLPOSLoggerForCategory(7);
  v25 = v24;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22284A000, v25, OS_SIGNPOST_INTERVAL_END, v5, "UPLoadedModelConfigurationInit", "", buf, 2u);
  }

  v26 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v26, OS_LOG_TYPE_DEFAULT, "END UPLoadedModelConfigurationInit", buf, 2u);
  }

  v27 = 0;
  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

@end