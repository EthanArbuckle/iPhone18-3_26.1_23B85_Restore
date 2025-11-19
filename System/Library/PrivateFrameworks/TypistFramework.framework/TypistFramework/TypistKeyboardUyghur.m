@interface TypistKeyboardUyghur
- (TypistKeyboardUyghur)initWithCoder:(id)a3;
- (id)addKeyboardPopupKeys:(id)a3 inPlane:(id)a4 addTo:(id)a5 keyplaneKeycaps:(id)a6;
- (id)init:(id)a3 options:(id)a4;
- (void)_addDoubleVowelKeys:(id)a3 withMapping:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)preprocessing;
@end

@implementation TypistKeyboardUyghur

- (id)init:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(TypistKeyboardUyghur *)self setSmallLettersInitialVowelMap:&unk_28802A668];
  [(TypistKeyboardUyghur *)self setCapitalLettersInitialVowelMap:&unk_28802A690];
  v10.receiver = self;
  v10.super_class = TypistKeyboardUyghur;
  v8 = [(TypistKeyboard *)&v10 init:v7 options:v6 locale:@"ug"];

  return v8;
}

- (id)addKeyboardPopupKeys:(id)a3 inPlane:(id)a4 addTo:(id)a5 keyplaneKeycaps:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v11 containsString:@"letters"])
  {
    v14 = v12;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = TypistKeyboardUyghur;
    v14 = [(TypistKeyboard *)&v17 addKeyboardPopupKeys:v10 inPlane:v11 addTo:v12 keyplaneKeycaps:v13];
  }

  v15 = v14;

  return v15;
}

- (void)_addDoubleVowelKeys:(id)a3 withMapping:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v43 = a4;
  obj = [v43 allKeys];
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
        v9 = [v43 objectForKeyedSubscript:v8];
        v10 = [(TypistKeyboard *)self keyPlanes];
        v11 = [v10 objectForKeyedSubscript:v6];
        v12 = [v11 objectForKeyedSubscript:v8];

        v13 = [(TypistKeyboard *)self keyPlanes];
        v14 = [v13 objectForKeyedSubscript:v6];
        v15 = v14;
        if (v12)
        {
          v16 = [v14 objectForKeyedSubscript:v8];
          v17 = [v16 mutableCopy];
          v18 = [(TypistKeyboard *)self keyPlanes];
          v19 = [v18 objectForKeyedSubscript:v6];
          [v19 setObject:v17 forKeyedSubscript:v9];

          v20 = [(TypistKeyboard *)self keyPlanes];
          v21 = [v20 objectForKeyedSubscript:v6];
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
          v40 = [(TypistKeyboard *)self keyPlanes];
          v32 = [v40 objectForKeyedSubscript:v6];
          v33 = [v32 objectForKeyedSubscript:v9];
          v34 = [v33 mutableCopy];
          v35 = [(TypistKeyboard *)self keyPlanes];
          [v35 objectForKeyedSubscript:v6];
          v37 = v36 = v6;
          [v37 setObject:v34 forKeyedSubscript:v8];

          v6 = v36;
          v20 = [(TypistKeyboard *)self keyPlanes];
          v21 = [v20 objectForKeyedSubscript:v36];
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
  v3 = [(TypistKeyboardUyghur *)self capitalLettersInitialVowelMap];
  [(TypistKeyboardUyghur *)self _addDoubleVowelKeys:@"capital-letters" withMapping:v3];

  v4 = [(TypistKeyboardUyghur *)self smallLettersInitialVowelMap];
  [(TypistKeyboardUyghur *)self _addDoubleVowelKeys:@"small-letters-small-display" withMapping:v4];
}

- (TypistKeyboardUyghur)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TypistKeyboardUyghur;
  v5 = [(TypistKeyboard *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"smallLettersInitialVowelMap"];
    smallLettersInitialVowelMap = v5->_smallLettersInitialVowelMap;
    v5->_smallLettersInitialVowelMap = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"capitalLettersInitialVowelMap"];
    capitalLettersInitialVowelMap = v5->_capitalLettersInitialVowelMap;
    v5->_capitalLettersInitialVowelMap = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TypistKeyboardUyghur;
  [(TypistKeyboard *)&v7 encodeWithCoder:v4];
  smallLettersInitialVowelMap = self->_smallLettersInitialVowelMap;
  if (smallLettersInitialVowelMap)
  {
    [v4 encodeObject:smallLettersInitialVowelMap forKey:@"smallLettersInitialVowelMap"];
  }

  capitalLettersInitialVowelMap = self->_capitalLettersInitialVowelMap;
  if (capitalLettersInitialVowelMap)
  {
    [v4 encodeObject:capitalLettersInitialVowelMap forKey:@"capitalLettersInitialVowelMap"];
  }
}

@end