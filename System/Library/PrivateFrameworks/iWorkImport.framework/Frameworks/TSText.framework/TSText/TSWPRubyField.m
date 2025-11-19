@interface TSWPRubyField
- (BOOL)canCopy:(_NSRange)a3;
- (NSString)baseText;
- (TSWPRubyField)initWithContext:(id)a3 rubyText:(id)a4;
- (id)copyWithContext:(id)a3;
- (int)baseTextScript;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)setRubyText:(id)a3;
@end

@implementation TSWPRubyField

- (TSWPRubyField)initWithContext:(id)a3 rubyText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = TSWPRubyField;
  v10 = [(TSWPSmartField *)&v14 initWithContext:v6];
  if (v10)
  {
    v11 = objc_msgSend_copy(v7, v8, v9);
    rubyText = v10->_rubyText;
    v10->_rubyText = v11;
  }

  return v10;
}

- (id)copyWithContext:(id)a3
{
  v10.receiver = self;
  v10.super_class = TSWPRubyField;
  v4 = [(TSWPSmartField *)&v10 copyWithContext:a3];
  v7 = objc_msgSend_copy(self->_rubyText, v5, v6);
  v8 = v4[11];
  v4[11] = v7;

  return v4;
}

- (void)setRubyText:(id)a3
{
  v14 = a3;
  objc_msgSend_willModify(self, v4, v5);
  v8 = objc_msgSend_copy(v14, v6, v7);
  rubyText = self->_rubyText;
  self->_rubyText = v8;

  v12 = objc_msgSend_parentStorage(self, v10, v11);
  objc_msgSend_smartFieldDidChange_(v12, v13, self);
}

- (NSString)baseText
{
  v4 = objc_msgSend_parentStorage(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_parentStorage(self, v5, v6);
    v10 = objc_msgSend_range(self, v8, v9);
    v12 = objc_msgSend_substringWithRange_(v7, v11, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int)baseTextScript
{
  v3 = objc_msgSend_baseText(self, a2, v2);
  v6 = objc_msgSend_tswp_contentsScript(v3, v4, v5);

  return v6;
}

- (BOOL)canCopy:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = objc_msgSend_range(self, a2, a3.location);
  return location <= v5 && location + length >= v5 + v6;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  *(a3 + 4) |= 2u;
  v7 = *(a3 + 4);
  if (!v7)
  {
    v8 = *(a3 + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSWP::SmartFieldArchive>(v8);
    *(a3 + 4) = v7;
  }

  v13.receiver = self;
  v13.super_class = TSWPRubyField;
  [(TSWPSmartField *)&v13 saveToArchive:v7 archiver:v6];
  rubyText = self->_rubyText;
  if (rubyText)
  {
    v12 = objc_msgSend_UTF8String(rubyText, v9, v10);
    sub_276F300B0(a3, v12);
  }
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_276F30410, off_2812DC408[164]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, v7);
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  if (*(a3 + 4))
  {
    v7 = *(a3 + 4);
  }

  else
  {
    v7 = &TSWP::_SmartFieldArchive_default_instance_;
  }

  v12.receiver = self;
  v12.super_class = TSWPRubyField;
  [(TSWPSmartField *)&v12 loadFromArchive:v7 unarchiver:v6];
  if (*(a3 + 16))
  {
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = objc_msgSend_tsp_initWithProtobufString_(v8, v9, *(a3 + 3) & 0xFFFFFFFFFFFFFFFELL);
    rubyText = self->_rubyText;
    self->_rubyText = v10;
  }
}

- (void)loadFromUnarchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(v7, v4, off_2812DC408[164]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, v7);
}

@end