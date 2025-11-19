@interface SDLegalDoc
+ (id)legalDocWithID:(int64_t)a3 title:(id)a4 content:(id)a5;
- (SDLegalDoc)initWithCoder:(id)a3;
- (SDLegalDoc)initWithID:(int64_t)a3 title:(id)a4 content:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SDLegalDoc

+ (id)legalDocWithID:(int64_t)a3 title:(id)a4 content:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [[SDLegalDoc alloc] initWithID:a3 title:v8 content:v7];

  return v9;
}

- (SDLegalDoc)initWithID:(int64_t)a3 title:(id)a4 content:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = SDLegalDoc;
  v10 = [(SDLegalDoc *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(SDLegalDoc *)v10 setLegal_id:a3];
    [(SDLegalDoc *)v11 setTitle:v8];
    [(SDLegalDoc *)v11 setContent:v9];
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[SDLegalDoc legal_id](self forKey:{"legal_id"), @"legal_id"}];
  v5 = [(SDLegalDoc *)self title];
  [v4 encodeObject:v5 forKey:@"title"];

  v6 = [(SDLegalDoc *)self content];
  [v4 encodeObject:v6 forKey:@"content"];
}

- (SDLegalDoc)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SDLegalDoc;
  v5 = [(SDLegalDoc *)&v9 init];
  if (v5)
  {
    -[SDLegalDoc setLegal_id:](v5, "setLegal_id:", [v4 decodeIntegerForKey:@"legal_id"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    [(SDLegalDoc *)v5 setTitle:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"content"];
    [(SDLegalDoc *)v5 setContent:v7];
  }

  return v5;
}

@end