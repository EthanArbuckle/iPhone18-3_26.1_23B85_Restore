@interface MecabraFacemarkCandidate
+ (id)candidateWithString:(id)string category:(id)category;
+ (id)copyFacemarkCandidatesForLanguage:(int)language;
+ (id)copyFacemarkCandidatesForLocale:(id)locale;
- (MecabraFacemarkCandidate)initWithString:(id)string category:(id)category;
- (void)dealloc;
@end

@implementation MecabraFacemarkCandidate

- (MecabraFacemarkCandidate)initWithString:(id)string category:(id)category
{
  v12.receiver = self;
  v12.super_class = MecabraFacemarkCandidate;
  v6 = [(MecabraFacemarkCandidate *)&v12 init];
  v6->_string = objc_msgSend_copy(string, v7, v8);
  v6->_category = objc_msgSend_copy(category, v9, v10);
  return v6;
}

+ (id)candidateWithString:(id)string category:(id)category
{
  v6 = [self alloc];
  v8 = objc_msgSend_initWithString_category_(v6, v7, string, category);

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MecabraFacemarkCandidate;
  [(MecabraFacemarkCandidate *)&v3 dealloc];
}

+ (id)copyFacemarkCandidatesForLocale:(id)locale
{
  v4 = sub_29927733C(locale);

  return MEMORY[0x2A1C70FE8](self, sel_copyFacemarkCandidatesForLanguage_, v4);
}

+ (id)copyFacemarkCandidatesForLanguage:(int)language
{
  v35 = *MEMORY[0x29EDCA608];
  if ((language - 1) < 2 || language == 5)
  {
    languageCopy = 3;
  }

  else
  {
    languageCopy = language;
  }

  v5 = sub_29936C2B8();
  v6 = sub_29936C350(v5, languageCopy, off_2A145F738[0], off_2A145F698[0]);
  v8 = MEMORY[0x29EDB8D80];
  if (*(v6 + 23) >= 0)
  {
    v9 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x29EDBA0F8], v7, v6, 4);
  }

  else
  {
    v9 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x29EDBA0F8], v7, *v6, 4);
  }

  v11 = objc_msgSend_arrayWithContentsOfFile_(v8, v10, v9);
  if (v11)
  {
    v12 = v11;
    v13 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v30, v34, 16);
    if (v15)
    {
      v17 = v15;
      v18 = *v31;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v12);
          }

          v20 = *(*(&v30 + 1) + 8 * i);
          v21 = objc_msgSend_objectForKey_(v20, v16, @"string");
          v23 = objc_msgSend_objectForKey_(v20, v22, @"category");
          v24 = [MecabraFacemarkCandidate alloc];
          v26 = objc_msgSend_initWithString_category_(v24, v25, v21, v23);
          objc_msgSend_addObject_(v13, v27, v26);
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v16, &v30, v34, 16);
      }

      while (v17);
    }
  }

  else
  {
    v13 = 0;
  }

  v28 = *MEMORY[0x29EDCA608];
  return v13;
}

@end