@interface GQDWPLayout
- (int)readAttributesFromReader:(_xmlTextReader *)a3 processor:(id)a4;
- (void)dealloc;
@end

@implementation GQDWPLayout

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDWPLayout;
  [(GQDWPBlockList *)&v3 dealloc];
}

- (int)readAttributesFromReader:(_xmlTextReader *)a3 processor:(id)a4
{
  AttributeNs = xmlTextReaderGetAttributeNs(a3, "style", *(qword_A35E8 + 16));
  if (AttributeNs)
  {
    v7 = AttributeNs;
    v8 = [objc_msgSend(objc_msgSend(a4 "documentState")];
    v9 = [v8 styleWithIdentifier:v7];
    self->mLayoutStyle = v9;
    if (!v9)
    {
      v9 = [v8 styleWithXmlUid:v7];
      self->mLayoutStyle = v9;
    }

    v10 = v9;
    free(v7);
  }

  return 1;
}

@end