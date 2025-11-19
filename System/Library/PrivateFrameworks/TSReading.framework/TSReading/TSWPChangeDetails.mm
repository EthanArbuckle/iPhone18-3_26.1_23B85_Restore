@interface TSWPChangeDetails
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToChangeDetails:(id)a3;
- (NSDate)date;
- (TSKAnnotationAuthor)author;
- (TSWPChangeDetails)initWithChange:(id)a3 changeString:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)setAuthor:(id)a3;
@end

@implementation TSWPChangeDetails

- (TSWPChangeDetails)initWithChange:(id)a3 changeString:(id)a4
{
  v9.receiver = self;
  v9.super_class = TSWPChangeDetails;
  v6 = [(TSWPChangeDetails *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(TSWPChangeDetails *)v6 setChange:a3];
    v7->mChangeString = a4;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPChangeDetails;
  [(TSWPChangeDetails *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(TSWPChangeDetails *)self isEqualToChangeDetails:a3];
}

- (BOOL)isEqualToChangeDetails:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v5 = [(TSWPChangeDetails *)self change];
    if (v5 == [a3 change])
    {
      v6 = -[TSKAnnotationAuthor isEqual:](-[TSWPChangeDetails author](self, "author"), "isEqual:", [a3 author]);
      if (v6)
      {
        v6 = -[NSDate isEqual:](-[TSWPChangeDetails date](self, "date"), "isEqual:", [a3 date]);
        if (v6)
        {
          v6 = -[NSString isEqual:](-[TSWPChangeDetails changeTrackingString](self, "changeTrackingString"), "isEqual:", [a3 changeTrackingString]);
          if (v6)
          {
            v7 = [(TSWPChangeDetails *)self annotationType];
            LOBYTE(v6) = v7 == [a3 annotationType];
          }
        }
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPChangeDetails copyWithZone:]"];
  [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPChangeDetails.mm"), 71, @"please don't call me"}];
  v6 = [TSWPChangeDetails alloc];
  v7 = [(TSWPChangeDetails *)self change];
  v8 = [(TSWPChangeDetails *)self changeTrackingString];

  return [(TSWPChangeDetails *)v6 initWithChange:v7 changeString:v8];
}

- (TSKAnnotationAuthor)author
{
  v2 = [[(TSWPChangeDetails *)self change] session];

  return [(TSWPChangeSession *)v2 author];
}

- (void)setAuthor:(id)a3
{
  v4 = [[(TSWPChangeDetails *)self change] session];

  [(TSWPChangeSession *)v4 setAuthor:a3];
}

- (NSDate)date
{
  v2 = [(TSWPChangeDetails *)self change];

  return [(TSWPChange *)v2 date];
}

@end