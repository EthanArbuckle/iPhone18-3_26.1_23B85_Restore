@interface OKWidgetContentCompositeFilter
+ (id)filterWithInputFilters:(id)a3 inputBackgroundFilters:(id)a4 inputCompositionFilterName:(id)a5;
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)a3;
- (id)inputKeys;
- (id)outputImage;
- (void)dealloc;
- (void)setSettingInputBackgroundFilters:(id)a3;
- (void)setSettingInputCompositionFilterName:(id)a3;
- (void)setSettingInputFilters:(id)a3;
@end

@implementation OKWidgetContentCompositeFilter

- (id)inputKeys
{
  v4.receiver = self;
  v4.super_class = OKWidgetContentCompositeFilter;
  v2 = [MEMORY[0x277CBEB18] arrayWithArray:{-[OKWidgetBasicFilter inputKeys](&v4, sel_inputKeys)}];
  [v2 addObjectsFromArray:&unk_287AF24D0];
  return v2;
}

- (id)outputImage
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(OKWidgetBasicFilter *)self inputImage];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  inputFilters = self->_inputFilters;
  v5 = [(NSArray *)inputFilters countByEnumeratingWithState:&v24 objects:v29 count:16];
  v6 = *MEMORY[0x277CBFAF0];
  v7 = *MEMORY[0x277CBFB50];
  if (v5)
  {
    v8 = v5;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(inputFilters);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        [v11 setInputPresentation:{-[OKWidgetBasicFilter inputPresentation](self, "inputPresentation")}];
        [v11 setValue:v3 forKey:v6];
        v3 = [v11 valueForKey:v7];
      }

      v8 = [(NSArray *)inputFilters countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  v12 = [(OKWidgetBasicFilter *)self inputImage];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  inputBackgroundFilters = self->_inputBackgroundFilters;
  v14 = [(NSArray *)inputBackgroundFilters countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(inputBackgroundFilters);
        }

        v18 = *(*(&v20 + 1) + 8 * j);
        [v18 setInputPresentation:{-[OKWidgetBasicFilter inputPresentation](self, "inputPresentation")}];
        [v18 setValue:v12 forKey:v6];
        v12 = [v18 valueForKey:v7];
      }

      v15 = [(NSArray *)inputBackgroundFilters countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }

  return [objc_msgSend(MEMORY[0x277CBF750] filterWithName:self->_inputCompositionFilterName keysAndValues:{v6, v3, *MEMORY[0x277CBFAB8], v12, 0), "valueForKey:", v7}];
}

- (void)dealloc
{
  inputCompositionFilterName = self->_inputCompositionFilterName;
  if (inputCompositionFilterName)
  {

    self->_inputCompositionFilterName = 0;
  }

  inputFilters = self->_inputFilters;
  if (inputFilters)
  {

    self->_inputFilters = 0;
  }

  inputBackgroundFilters = self->_inputBackgroundFilters;
  if (inputBackgroundFilters)
  {

    self->_inputBackgroundFilters = 0;
  }

  v6.receiver = self;
  v6.super_class = OKWidgetContentCompositeFilter;
  [(OKWidgetBasicFilter *)&v6 dealloc];
}

+ (id)supportedSettings
{
  v11[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v10[0] = @"inputCompositionFilterName";
  v8 = @"type";
  v9 = &unk_287AF0608;
  v11[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v10[1] = @"inputFilters";
  v6 = @"type";
  v7 = &unk_287AF0620;
  v11[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v10[2] = @"inputBackgroundFilters";
  v4 = @"type";
  v5 = &unk_287AF0620;
  v11[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v11, v10, 3)}];
  return v2;
}

- (void)setSettingInputCompositionFilterName:(id)a3
{
  inputCompositionFilterName = self->_inputCompositionFilterName;
  if (inputCompositionFilterName)
  {

    self->_inputCompositionFilterName = 0;
  }

  self->_inputCompositionFilterName = a3;
}

- (void)setSettingInputFilters:(id)a3
{
  inputFilters = self->_inputFilters;
  if (inputFilters)
  {

    self->_inputFilters = 0;
  }

  self->_inputFilters = a3;
}

- (void)setSettingInputBackgroundFilters:(id)a3
{
  inputBackgroundFilters = self->_inputBackgroundFilters;
  if (inputBackgroundFilters)
  {

    self->_inputBackgroundFilters = 0;
  }

  self->_inputBackgroundFilters = a3;
}

+ (void)setupJavascriptContext:(id)a3
{
  [a3 setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetContentCompositeFilter"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:a3];
}

+ (id)filterWithInputFilters:(id)a3 inputBackgroundFilters:(id)a4 inputCompositionFilterName:(id)a5
{
  v8 = objc_alloc_init(OKWidgetContentCompositeFilter);
  [(OKWidgetContentCompositeFilter *)v8 setInputCompositionFilterName:a5];
  [(OKWidgetContentCompositeFilter *)v8 setInputBackgroundFilters:a4];
  [(OKWidgetContentCompositeFilter *)v8 setInputFilters:a3];

  return v8;
}

@end