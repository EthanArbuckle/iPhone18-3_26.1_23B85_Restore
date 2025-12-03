@interface TNSheetStyle
+ (id)defaultSheetStyleWithContext:(id)context;
+ (id)properties;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)loadSheetStylePropertiesIntoPropertyMap:(id)map fromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)saveSheetStylePropertiesToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TNSheetStyle

+ (id)properties
{
  if (qword_280A3DF48 != -1)
  {
    sub_275F4ABD0();
  }

  v3 = qword_280A3DF40;

  return v3;
}

+ (id)defaultSheetStyleWithContext:(id)context
{
  v3 = objc_msgSend_defaultStyleWithContext_(self, a2, context);
  v6 = objc_msgSend_whiteColor(MEMORY[0x277D801F8], v4, v5);
  objc_msgSend_setValue_forProperty_(v3, v7, v6, 516);

  return v3;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812DAFE8[26]);

  if (*(v6 + 24))
  {
    v7 = *(v6 + 24);
  }

  else
  {
    v7 = MEMORY[0x277D80BD0];
  }

  v15.receiver = self;
  v15.super_class = TNSheetStyle;
  [(TNSheetStyle *)&v15 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v8 = *(v6 + 40);
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D80AB8]);
    v12 = objc_msgSend_initWithCapacity_(v9, v10, v8);
    if (*(v6 + 32))
    {
      objc_msgSend_loadSheetStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(self, v11, v12, *(v6 + 32), unarchiverCopy);
    }

    else
    {
      objc_msgSend_loadSheetStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(self, v11, v12, &qword_2812DB450, unarchiverCopy);
    }

    v13 = *MEMORY[0x277D80AF0];
    v14 = *(&self->super.super.super.isa + v13);
    *(&self->super.super.super.isa + v13) = v12;
  }
}

- (void)loadSheetStylePropertiesIntoPropertyMap:(id)map fromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  mapCopy = map;
  unarchiverCopy = unarchiver;
  v9 = objc_opt_class();
  if (*(archive + 16))
  {
    v11 = v9;
    v12 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v10, *(archive + 3), unarchiverCopy);
    v17 = v12;
    v13 = objc_opt_class();
    LODWORD(v11) = objc_msgSend_validateObjectValue_withClass_forProperty_(v11, v14, &v17, v13, 516);
    v15 = v17;

    if (v11)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v16, v15, 516);
    }
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_275F20C98, off_2812DAFE8[26]);

  *(v6 + 16) |= 1u;
  v7 = *(v6 + 24);
  if (!v7)
  {
    v8 = *(v6 + 8);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = MEMORY[0x277C90FA0](v8);
    *(v6 + 24) = v7;
  }

  v16.receiver = self;
  v16.super_class = TNSheetStyle;
  [(TNSheetStyle *)&v16 saveToArchive:v7 archiver:archiverCopy];
  v11 = objc_msgSend_overrideCount(self, v9, v10);
  if (v11)
  {
    v13 = *(v6 + 16);
    *(v6 + 40) = v11;
    *(v6 + 16) = v13 | 6;
    v14 = *(v6 + 32);
    if (!v14)
    {
      v15 = *(v6 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = sub_275EEE794(v15);
      *(v6 + 32) = v14;
    }

    objc_msgSend_saveSheetStylePropertiesToArchive_archiver_(self, v12, v14, archiverCopy);
  }
}

- (void)saveSheetStylePropertiesToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v7 = objc_opt_class();
  v8 = *(&self->super.super.super.isa + *MEMORY[0x277D80AF0]);
  if (objc_msgSend_containsProperty_(v8, v9, 516))
  {
    v11 = objc_msgSend_objectForProperty_(v8, v10, 516);
    v19 = v11;
    v12 = objc_opt_class();
    v14 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v13, &v19, v12, 516);
    v15 = v19;

    if (v14)
    {
      *(archive + 4) |= 1u;
      v17 = *(archive + 3);
      if (!v17)
      {
        v18 = *(archive + 1);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = MEMORY[0x277C90F10](v18);
        *(archive + 3) = v17;
      }

      objc_msgSend_saveToArchive_archiver_(v15, v16, v17, archiverCopy);
    }
  }
}

@end