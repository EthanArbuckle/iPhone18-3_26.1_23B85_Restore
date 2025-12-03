@interface TSWPCharacterStyle
+ (NSString)nullStyleName;
+ (TSSPropertySet)deprecatedProperties;
+ (TSSPropertySet)emphasisProperties;
+ (TSSPropertySet)nonEmphasisCharacterProperties;
+ (TSSPropertySet)properties;
+ (TSSPropertySet)propertiesAllowingNSNull;
+ (id)nullStyleWithContext:(id)context;
- (id)archivableRepresentationOfChangeSet:(id)set;
- (int)writingDirection;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSWPCharacterStyle

+ (TSSPropertySet)properties
{
  if (qword_280A58040 != -1)
  {
    sub_276F4F01C();
  }

  v3 = qword_280A58038;

  return v3;
}

+ (TSSPropertySet)emphasisProperties
{
  if (qword_280A58050 != -1)
  {
    sub_276F4F030();
  }

  v3 = qword_280A58048;

  return v3;
}

+ (TSSPropertySet)nonEmphasisCharacterProperties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276D42340;
  block[3] = &unk_27A6F3D70;
  block[4] = self;
  if (qword_280A58060 != -1)
  {
    dispatch_once(&qword_280A58060, block);
  }

  v2 = qword_280A58058;

  return v2;
}

+ (TSSPropertySet)deprecatedProperties
{
  if (qword_280A58070 != -1)
  {
    sub_276F4F044();
  }

  v3 = qword_280A58068;

  return v3;
}

+ (TSSPropertySet)propertiesAllowingNSNull
{
  if (qword_280A58080 != -1)
  {
    sub_276F4F058();
  }

  v3 = qword_280A58078;

  return v3;
}

+ (NSString)nullStyleName
{
  v3 = sub_276E32640(self, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"None", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)nullStyleWithContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_nullStyleName(self, v6, v7);
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v5, v9, contextCopy, v8, 0, 0);

  return isVariation;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 3))
  {
    v7 = *(archive + 3);
  }

  else
  {
    v7 = MEMORY[0x277D80BD0];
  }

  v15.receiver = self;
  v15.super_class = TSWPCharacterStyle;
  [(TSWPCharacterStyle *)&v15 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v8 = *(archive + 10);
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D80AB8]);
    v12 = objc_msgSend_initWithCapacity_(v9, v10, v8);
    if (*(archive + 4))
    {
      objc_msgSend_loadCharacterStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(self, v11, v12, *(archive + 4), unarchiverCopy);
    }

    else
    {
      objc_msgSend_loadCharacterStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(self, v11, v12, &TSWP::_CharacterStylePropertiesArchive_default_instance_, unarchiverCopy);
    }

    v13 = *MEMORY[0x277D80AF0];
    v14 = *(&self->super.super.super.isa + v13);
    *(&self->super.super.super.isa + v13) = v12;
  }
}

- (int)writingDirection
{
  v3 = objc_msgSend_intValueForProperty_(self, a2, 44);
  if (v3 == 0x80000000)
  {
    objc_opt_class();
    v5 = objc_msgSend_valueForProperty_(self, v4, 39);
    v6 = TSUDynamicCast();

    if (v6)
    {
      v3 = objc_msgSend_characterDirectionForLanguage_(MEMORY[0x277CBEAF8], v7, v6) == 2;
    }

    else
    {
      v3 = -1;
    }
  }

  return v3;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812DC408[28]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 1u;
  v7 = *(archive + 3);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = MEMORY[0x277CA3260](v8);
    *(archive + 3) = v7;
  }

  v24.receiver = self;
  v24.super_class = TSWPCharacterStyle;
  [(TSWPCharacterStyle *)&v24 saveToArchive:v7 archiver:archiverCopy];
  v11 = objc_msgSend_overrideCount(self, v9, v10);
  if (v11)
  {
    if (HIDWORD(v11))
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSWPCharacterStyle saveToArchive:archiver:]");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCharacterStyle.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 207, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
      LODWORD(v11) = -1;
    }

    *(archive + 4) |= 4u;
    *(archive + 10) = v11;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_276D42AEC;
    v21[3] = &unk_27A6F3E30;
    v21[4] = self;
    archiveCopy = archive;
    v22 = archiverCopy;
    objc_msgSend_pushScopeForField_message_usingBlock_(v22, v13, 11, archive, v21);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276D42CCC, off_2812DC408[28]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (id)archivableRepresentationOfChangeSet:(id)set
{
  setCopy = set;
  v5 = [TSWPStyleDiff alloc];
  v8 = objc_msgSend_context(self, v6, v7);
  v10 = objc_msgSend_initWithContext_changeSet_(v5, v9, v8, setCopy);

  return v10;
}

@end