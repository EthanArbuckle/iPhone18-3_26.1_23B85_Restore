@interface GQDWPParagraph
- (BOOL)isBlank;
- (int)readAttributesFromReader:(_xmlTextReader *)reader processor:(id)processor;
- (void)dealloc;
@end

@implementation GQDWPParagraph

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDWPParagraph;
  [(GQDWPTextList *)&v3 dealloc];
}

- (BOOL)isBlank
{
  Count = CFArrayGetCount(self->super.super.mChildren);
  if (Count < 1)
  {
    return 1;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = Count & 0x7FFFFFFF;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(self->super.super.mChildren, v4);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ![ValueAtIndex isBlank])
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ![ValueAtIndex isBlank])
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v5 = ++v4 >= v6;
    }

    while (v6 != v4);
  }

  return v5;
}

- (int)readAttributesFromReader:(_xmlTextReader *)reader processor:(id)processor
{
  self->mListLevel = sub_42468(reader, qword_A35E8, "list-level", 0);
  self->mRestartList = sub_42340(reader, qword_A35E8, "restart-list", 0);
  self->mContinue = sub_42340(reader, qword_A35E8, "cont", 0);
  self->mIsHidden = sub_42340(reader, qword_A35E8, "outline-hidden", 0);
  AttributeNs = xmlTextReaderGetAttributeNs(reader, "style", *(qword_A35E8 + 16));
  if (!AttributeNs)
  {
    return 1;
  }

  v8 = AttributeNs;
  v9 = [objc_msgSend(objc_msgSend(processor "documentState")];
  if (!v9)
  {
    v9 = [objc_msgSend(processor "documentState")];
  }

  v10 = [v9 styleWithIdentifier:v8];
  self->mParaStyle = v10;
  if (!v10)
  {
    v10 = [v9 styleWithXmlUid:v8];
    self->mParaStyle = v10;
  }

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = 3;
  }

  v12 = v10;
  free(v8);
  return v11;
}

@end