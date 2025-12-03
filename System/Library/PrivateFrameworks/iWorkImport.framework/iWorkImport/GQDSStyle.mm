@interface GQDSStyle
+ (GQDSMap)defaultMapForStyleType:(int)type;
+ (id)createReplacementForMissingObject:(_xmlTextReader *)object processor:(id)processor;
+ (int)styleTypeForNodeName:(const char *)name;
- (void)dealloc;
- (void)setParent:(id)parent;
@end

@implementation GQDSStyle

+ (GQDSMap)defaultMapForStyleType:(int)type
{
  v4 = qword_A40C8;
  if (!qword_A40C8)
  {
    Mutable = CFDictionaryCreateMutable(0, 17, 0, &unk_9B750);
    qword_A40C8 = Mutable;
    v6 = CFArrayCreateMutable(0, 0, &unk_84B58);
    v7 = sub_F62C(1, @"Helvetica");
    CFArrayAppendValue(v6, v7);
    v8 = sub_F578(2, 12.0);
    CFArrayAppendValue(v6, v8);
    v9 = sub_F62C(3, +[GQDColor blackColor]);
    CFArrayAppendValue(v6, v9);
    v10 = sub_F51C(4, 0);
    CFArrayAppendValue(v6, v10);
    v11 = sub_F51C(5, 0);
    CFArrayAppendValue(v6, v11);
    v12 = sub_F51C(6, 0);
    CFArrayAppendValue(v6, v12);
    v13 = sub_F51C(7, 0);
    CFArrayAppendValue(v6, v13);
    v14 = sub_F578(8, 1.0);
    CFArrayAppendValue(v6, v14);
    v15 = sub_F62C(9, 0);
    CFArrayAppendValue(v6, v15);
    v16 = sub_F51C(11, 0);
    CFArrayAppendValue(v6, v16);
    v17 = sub_F578(12, 1.0);
    CFArrayAppendValue(v6, v17);
    v18 = sub_F62C(13, 0);
    CFArrayAppendValue(v6, v18);
    v19 = sub_F51C(15, 0);
    CFArrayAppendValue(v6, v19);
    v20 = sub_F578(16, 0.0);
    CFArrayAppendValue(v6, v20);
    v21 = sub_F62C(19, 0);
    CFArrayAppendValue(v6, v21);
    v22 = sub_F578(20, 0.0);
    CFArrayAppendValue(v6, v22);
    v23 = sub_F51C(21, 0);
    CFArrayAppendValue(v6, v23);
    v24 = sub_F62C(22, 0);
    CFArrayAppendValue(v6, v24);
    v25 = sub_F51C(14, 0);
    CFArrayAppendValue(v6, v25);
    v26 = sub_F51C(10, 0);
    CFArrayAppendValue(v6, v26);
    v27 = sub_F724(v6);
    CFDictionarySetValue(Mutable, 0, v27);
    v28 = sub_F578(23, 0.0);
    CFArrayAppendValue(v6, v28);
    v29 = sub_F578(24, 0.0);
    CFArrayAppendValue(v6, v29);
    v30 = sub_F578(25, 0.0);
    CFArrayAppendValue(v6, v30);
    v31 = sub_F578(26, 36.0);
    CFArrayAppendValue(v6, v31);
    v32 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    v33 = sub_F62C(27, v32);
    CFArrayAppendValue(v6, v33);
    CFRelease(v32);
    v34 = objc_alloc_init(GQDWPLineSpacing);
    v35 = sub_F62C(28, v34);
    CFArrayAppendValue(v6, v35);

    v36 = sub_F51C(29, 0);
    CFArrayAppendValue(v6, v36);
    v37 = sub_F578(30, 0.0);
    CFArrayAppendValue(v6, v37);
    v38 = sub_F578(31, 0.0);
    CFArrayAppendValue(v6, v38);
    v39 = sub_F51C(32, 0);
    CFArrayAppendValue(v6, v39);
    v40 = sub_F51C(33, 0);
    CFArrayAppendValue(v6, v40);
    v41 = sub_F51C(34, 0);
    CFArrayAppendValue(v6, v41);
    v42 = sub_F51C(35, 1);
    CFArrayAppendValue(v6, v42);
    v43 = sub_F62C(36, 0);
    CFArrayAppendValue(v6, v43);
    v44 = sub_F62C(37, 0);
    CFArrayAppendValue(v6, v44);
    v45 = sub_F62C(38, 0);
    CFArrayAppendValue(v6, v45);
    v46 = sub_F51C(39, 1);
    CFArrayAppendValue(v6, v46);
    v47 = sub_F62C(40, @".");
    CFArrayAppendValue(v6, v47);
    v48 = sub_F51C(42, 0);
    CFArrayAppendValue(v6, v48);
    v49 = sub_F724(v6);
    CFDictionarySetValue(Mutable, &dword_0 + 1, v49);
    CFArrayRemoveAllValues(v6);
    v50 = sub_F62C(45, 0);
    CFArrayAppendValue(v6, v50);
    v51 = objc_alloc_init(GQDWPPadding);
    v52 = sub_F62C(46, v51);
    CFArrayAppendValue(v6, v52);

    v53 = objc_alloc_init(GQDWPPadding);
    v54 = sub_F62C(47, v53);
    CFArrayAppendValue(v6, v54);

    v55 = sub_F578(48, 0.0);
    CFArrayAppendValue(v6, v55);
    v56 = sub_F51C(50, 0);
    CFArrayAppendValue(v6, v56);
    v57 = sub_F62C(51, 0);
    CFArrayAppendValue(v6, v57);
    v58 = sub_F51C(52, 1);
    CFArrayAppendValue(v6, v58);
    v59 = sub_F51C(53, 0);
    CFArrayAppendValue(v6, v59);
    v60 = sub_F724(v6);
    CFDictionarySetValue(Mutable, &dword_0 + 2, v60);
    CFRelease(v6);
    v4 = qword_A40C8;
  }

  return CFDictionaryGetValue(v4, type);
}

+ (id)createReplacementForMissingObject:(_xmlTextReader *)object processor:(id)processor
{
  v7 = xmlTextReaderConstLocalName(object);
  v8 = sub_41D7C(v7);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = [self createReplacementForMissingStyleOfType:{objc_msgSend(self, "styleTypeForNodeName:", v8)}];
  free(v9);
  if (v10)
  {
    AttributeNs = xmlTextReaderGetAttributeNs(object, off_9D3E0, *(qword_A35E0 + 16));
    [objc_msgSend(objc_msgSend(processor "documentState")];
  }

  return v10;
}

+ (int)styleTypeForNodeName:(const char *)name
{
  v4 = qword_A40D0;
  if (!qword_A40D0)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &unk_850D0, 0);
    qword_A40D0 = Mutable;
    CFDictionarySetValue(Mutable, off_9CAB0, 0);
    CFDictionarySetValue(Mutable, off_9CAB8, &dword_0 + 1);
    CFDictionarySetValue(Mutable, off_9CAC0, &dword_0 + 1);
    CFDictionarySetValue(Mutable, off_9CAC8, &dword_0 + 2);
    CFDictionarySetValue(Mutable, off_9CAD0, &dword_0 + 3);
    CFDictionarySetValue(Mutable, off_9CAD8, &dword_4);
    CFDictionarySetValue(Mutable, off_9CAE0, &dword_4 + 1);
    CFDictionarySetValue(Mutable, off_9CAE8, &dword_4 + 2);
    CFDictionarySetValue(Mutable, off_9CAF0, &dword_4 + 3);
    CFDictionarySetValue(Mutable, off_9CAF8, &dword_8);
    CFDictionarySetValue(Mutable, off_9CB00, &dword_8 + 1);
    CFDictionarySetValue(Mutable, off_9CB08, &dword_8 + 2);
    CFDictionarySetValue(Mutable, off_9CB10, &dword_8 + 3);
    CFDictionarySetValue(Mutable, off_9CB18, &dword_C);
    CFDictionarySetValue(Mutable, off_9CB20, &dword_C + 1);
    CFDictionarySetValue(Mutable, off_9CB28, &dword_C + 2);
    CFDictionarySetValue(Mutable, off_9CB30, &dword_C + 3);
    CFDictionarySetValue(Mutable, off_9CB38, &dword_10);
    v4 = qword_A40D0;
  }

  return CFDictionaryGetValue(v4, name);
}

- (void)dealloc
{
  mPropertyMap = self->mPropertyMap;
  if (mPropertyMap)
  {
    sub_F850(mPropertyMap);
  }

  v4.receiver = self;
  v4.super_class = GQDSStyle;
  [(GQDSStyle *)&v4 dealloc];
}

- (void)setParent:(id)parent
{
  parentCopy = parent;

  self->mParent = parent;
}

@end