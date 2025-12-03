@interface TSWPChangeDetails
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToChangeDetails:(id)details;
- (NSDate)date;
- (TSKAnnotationAuthor)author;
- (TSWPChangeDetails)initWithChange:(id)change changeString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setAuthor:(id)author;
@end

@implementation TSWPChangeDetails

- (TSWPChangeDetails)initWithChange:(id)change changeString:(id)string
{
  v9.receiver = self;
  v9.super_class = TSWPChangeDetails;
  v6 = [(TSWPChangeDetails *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(TSWPChangeDetails *)v6 setChange:change];
    v7->mChangeString = string;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPChangeDetails;
  [(TSWPChangeDetails *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(TSWPChangeDetails *)self isEqualToChangeDetails:equal];
}

- (BOOL)isEqualToChangeDetails:(id)details
{
  if (self == details)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    change = [(TSWPChangeDetails *)self change];
    if (change == [details change])
    {
      v6 = -[TSKAnnotationAuthor isEqual:](-[TSWPChangeDetails author](self, "author"), "isEqual:", [details author]);
      if (v6)
      {
        v6 = -[NSDate isEqual:](-[TSWPChangeDetails date](self, "date"), "isEqual:", [details date]);
        if (v6)
        {
          v6 = -[NSString isEqual:](-[TSWPChangeDetails changeTrackingString](self, "changeTrackingString"), "isEqual:", [details changeTrackingString]);
          if (v6)
          {
            annotationType = [(TSWPChangeDetails *)self annotationType];
            LOBYTE(v6) = annotationType == [details annotationType];
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

- (id)copyWithZone:(_NSZone *)zone
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPChangeDetails copyWithZone:]"];
  [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPChangeDetails.mm"), 71, @"please don't call me"}];
  v6 = [TSWPChangeDetails alloc];
  change = [(TSWPChangeDetails *)self change];
  changeTrackingString = [(TSWPChangeDetails *)self changeTrackingString];

  return [(TSWPChangeDetails *)v6 initWithChange:change changeString:changeTrackingString];
}

- (TSKAnnotationAuthor)author
{
  session = [[(TSWPChangeDetails *)self change] session];

  return [(TSWPChangeSession *)session author];
}

- (void)setAuthor:(id)author
{
  session = [[(TSWPChangeDetails *)self change] session];

  [(TSWPChangeSession *)session setAuthor:author];
}

- (NSDate)date
{
  change = [(TSWPChangeDetails *)self change];

  return [(TSWPChange *)change date];
}

@end