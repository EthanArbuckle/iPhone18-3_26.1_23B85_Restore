@interface TypistKeyboardUyghur
- (TypistKeyboardUyghur)initWithCoder:(id)coder;
- (id)addKeyboardPopupKeys:(id)keys inPlane:(id)plane addTo:(id)to keyplaneKeycaps:(id)keycaps;
- (id)init:(id)init options:(id)options;
- (void)_addDoubleVowelKeys:(id)keys withMapping:(id)mapping;
- (void)encodeWithCoder:(id)coder;
- (void)preprocessing;
@end

@implementation TypistKeyboardUyghur

- (id)init:(id)init options:(id)options
{
  optionsCopy = options;
  initCopy = init;
  [(TypistKeyboardUyghur *)self setSmallLettersInitialVowelMap:&unk_28802A668];
  [(TypistKeyboardUyghur *)self setCapitalLettersInitialVowelMap:&unk_28802A690];
  v10.receiver = self;
  v10.super_class = TypistKeyboardUyghur;
  v8 = [(TypistKeyboard *)&v10 init:initCopy options:optionsCopy locale:@"ug"];

  return v8;
}

- (id)addKeyboardPopupKeys:(id)keys inPlane:(id)plane addTo:(id)to keyplaneKeycaps:(id)keycaps
{
  keysCopy = keys;
  planeCopy = plane;
  toCopy = to;
  keycapsCopy = keycaps;
  if ([planeCopy containsString:@"letters"])
  {
    v14 = toCopy;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = TypistKeyboardUyghur;
    v14 = [(TypistKeyboard *)&v17 addKeyboardPopupKeys:keysCopy inPlane:planeCopy addTo:toCopy keyplaneKeycaps:keycapsCopy];
  }

  v15 = v14;

  return v15;
}

- (void)_addDoubleVowelKeys:(id)keys withMapping:(id)mapping
{
  v50 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  mappingCopy = mapping;
  obj = [mappingCopy allKeys];
  v44 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v44)
  {
    v42 = *v46;
    do
    {
      v7 = 0;
      do
      {
        if (*v46 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v45 + 1) + 8 * v7);
        v9 = [mappingCopy objectForKeyedSubscript:v8];
        keyPlanes = [(TypistKeyboard *)self keyPlanes];
        v11 = [keyPlanes objectForKeyedSubscript:keysCopy];
        v12 = [v11 objectForKeyedSubscript:v8];

        keyPlanes2 = [(TypistKeyboard *)self keyPlanes];
        v14 = [keyPlanes2 objectForKeyedSubscript:keysCopy];
        v15 = v14;
        if (v12)
        {
          v16 = [v14 objectForKeyedSubscript:v8];
          v17 = [v16 mutableCopy];
          keyPlanes3 = [(TypistKeyboard *)self keyPlanes];
          v19 = [keyPlanes3 objectForKeyedSubscript:keysCopy];
          [v19 setObject:v17 forKeyedSubscript:v9];

          keyPlanes4 = [(TypistKeyboard *)self keyPlanes];
          v21 = [keyPlanes4 objectForKeyedSubscript:keysCopy];
          v22 = [v21 objectForKeyedSubscript:v9];
          v23 = v22;
          v24 = v9;
LABEL_10:
          [v22 setObject:v24 forKeyedSubscript:@"key"];

          goto LABEL_11;
        }

        v25 = [v14 objectForKeyedSubscript:v9];

        if (v25)
        {
          keyPlanes5 = [(TypistKeyboard *)self keyPlanes];
          v32 = [keyPlanes5 objectForKeyedSubscript:keysCopy];
          v33 = [v32 objectForKeyedSubscript:v9];
          v34 = [v33 mutableCopy];
          keyPlanes6 = [(TypistKeyboard *)self keyPlanes];
          [keyPlanes6 objectForKeyedSubscript:keysCopy];
          v37 = v36 = keysCopy;
          [v37 setObject:v34 forKeyedSubscript:v8];

          keysCopy = v36;
          keyPlanes4 = [(TypistKeyboard *)self keyPlanes];
          v21 = [keyPlanes4 objectForKeyedSubscript:v36];
          v22 = [v21 objectForKeyedSubscript:v8];
          v23 = v22;
          v24 = v8;
          goto LABEL_10;
        }

        TYLogl(OS_LOG_TYPE_ERROR, @"CRITICAL WARNING: Neither the '%@' nor the %@ key are found!!", v26, v27, v28, v29, v30, v31, v8);
LABEL_11:

        ++v7;
      }

      while (v44 != v7);
      v38 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      v44 = v38;
    }

    while (v38);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)preprocessing
{
  v5.receiver = self;
  v5.super_class = TypistKeyboardUyghur;
  [(TypistKeyboard *)&v5 preprocessing];
  capitalLettersInitialVowelMap = [(TypistKeyboardUyghur *)self capitalLettersInitialVowelMap];
  [(TypistKeyboardUyghur *)self _addDoubleVowelKeys:@"capital-letters" withMapping:capitalLettersInitialVowelMap];

  smallLettersInitialVowelMap = [(TypistKeyboardUyghur *)self smallLettersInitialVowelMap];
  [(TypistKeyboardUyghur *)self _addDoubleVowelKeys:@"small-letters-small-display" withMapping:smallLettersInitialVowelMap];
}

- (TypistKeyboardUyghur)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TypistKeyboardUyghur;
  v5 = [(TypistKeyboard *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"smallLettersInitialVowelMap"];
    smallLettersInitialVowelMap = v5->_smallLettersInitialVowelMap;
    v5->_smallLettersInitialVowelMap = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"capitalLettersInitialVowelMap"];
    capitalLettersInitialVowelMap = v5->_capitalLettersInitialVowelMap;
    v5->_capitalLettersInitialVowelMap = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = TypistKeyboardUyghur;
  [(TypistKeyboard *)&v7 encodeWithCoder:coderCopy];
  smallLettersInitialVowelMap = self->_smallLettersInitialVowelMap;
  if (smallLettersInitialVowelMap)
  {
    [coderCopy encodeObject:smallLettersInitialVowelMap forKey:@"smallLettersInitialVowelMap"];
  }

  capitalLettersInitialVowelMap = self->_capitalLettersInitialVowelMap;
  if (capitalLettersInitialVowelMap)
  {
    [coderCopy encodeObject:capitalLettersInitialVowelMap forKey:@"capitalLettersInitialVowelMap"];
  }
}

@end