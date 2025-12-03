@interface SDLegalDoc
+ (id)legalDocWithID:(int64_t)d title:(id)title content:(id)content;
- (SDLegalDoc)initWithCoder:(id)coder;
- (SDLegalDoc)initWithID:(int64_t)d title:(id)title content:(id)content;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SDLegalDoc

+ (id)legalDocWithID:(int64_t)d title:(id)title content:(id)content
{
  contentCopy = content;
  titleCopy = title;
  v9 = [[SDLegalDoc alloc] initWithID:d title:titleCopy content:contentCopy];

  return v9;
}

- (SDLegalDoc)initWithID:(int64_t)d title:(id)title content:(id)content
{
  titleCopy = title;
  contentCopy = content;
  v13.receiver = self;
  v13.super_class = SDLegalDoc;
  v10 = [(SDLegalDoc *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(SDLegalDoc *)v10 setLegal_id:d];
    [(SDLegalDoc *)v11 setTitle:titleCopy];
    [(SDLegalDoc *)v11 setContent:contentCopy];
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[SDLegalDoc legal_id](self forKey:{"legal_id"), @"legal_id"}];
  title = [(SDLegalDoc *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  content = [(SDLegalDoc *)self content];
  [coderCopy encodeObject:content forKey:@"content"];
}

- (SDLegalDoc)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SDLegalDoc;
  v5 = [(SDLegalDoc *)&v9 init];
  if (v5)
  {
    -[SDLegalDoc setLegal_id:](v5, "setLegal_id:", [coderCopy decodeIntegerForKey:@"legal_id"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    [(SDLegalDoc *)v5 setTitle:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"content"];
    [(SDLegalDoc *)v5 setContent:v7];
  }

  return v5;
}

@end