@interface RKMessage
- (RKMessage)initWithString:(id)string title:(id)title languageIdentifier:(id)identifier senderUUID:(id)d dateSent:(id)sent position:(unint64_t)position;
- (void)annotateRange:(_NSRange)range type:(unint64_t)type field:(unint64_t)field;
@end

@implementation RKMessage

- (RKMessage)initWithString:(id)string title:(id)title languageIdentifier:(id)identifier senderUUID:(id)d dateSent:(id)sent position:(unint64_t)position
{
  titleCopy = title;
  dCopy = d;
  sentCopy = sent;
  v21.receiver = self;
  v21.super_class = RKMessage;
  v18 = [(RKText *)&v21 initWithString:string andLanguageIdentifier:identifier];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_title, title);
    objc_storeStrong(&v19->_senderUUID, d);
    objc_storeStrong(&v19->_dateSent, sent);
    v19->_position = position;
  }

  return v19;
}

- (void)annotateRange:(_NSRange)range type:(unint64_t)type field:(unint64_t)field
{
  length = range.length;
  location = range.location;
  if (field == 1)
  {
    [(RKMessage *)self title];
  }

  else
  {
    [(RKText *)self string];
  }
  v9 = ;
  v10 = [v9 length];

  v21.location = 0;
  v21.length = v10;
  v28.location = location;
  v28.length = length;
  if (!NSIntersectionRange(v21, v28).length)
  {
    v15 = MEMORY[0x277CBEAD8];
    v16 = *MEMORY[0x277CBE730];
    v24.location = location;
    v24.length = length;
    v14 = NSStringFromRange(v24);
    v25.location = 0;
    v25.length = v10;
    v17 = NSStringFromRange(v25);
    [v15 raise:v16 format:{@"Annotation range %@ does not intersect text range %@", v14, v17}];
LABEL_11:

    goto LABEL_12;
  }

  v22.location = 0;
  v22.length = v10;
  v29.location = location;
  v29.length = length;
  v11 = NSUnionRange(v22, v29);
  if (v11.location || v11.length != v10)
  {
    v18 = MEMORY[0x277CBEAD8];
    v19 = *MEMORY[0x277CBE730];
    v26.location = location;
    v26.length = length;
    v14 = NSStringFromRange(v26);
    v27.location = 0;
    v27.length = v10;
    v17 = NSStringFromRange(v27);
    [v18 raise:v19 format:{@"Annotation range %@ is not fully contained by text range %@", v14, v17}];
    goto LABEL_11;
  }

  if (!length)
  {
    v12 = MEMORY[0x277CBEAD8];
    v13 = *MEMORY[0x277CBE730];
    v23.location = location;
    v23.length = 0;
    v14 = NSStringFromRange(v23);
    [v12 raise:v13 format:{@"Annotation range %@ is empty", v14}];
LABEL_12:
  }

  v20.receiver = self;
  v20.super_class = RKMessage;
  [(RKText *)&v20 annotateRange:location type:length, type];
}

@end