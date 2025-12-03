@interface WBSHistoryVisitIdentifier
- (BOOL)isEqual:(id)equal;
- (WBSHistoryVisitIdentifier)initWithCoder:(id)coder;
- (WBSHistoryVisitIdentifier)initWithURLString:(id)string visitTime:(double)time;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSHistoryVisitIdentifier

- (WBSHistoryVisitIdentifier)initWithURLString:(id)string visitTime:(double)time
{
  stringCopy = string;
  v14.receiver = self;
  v14.super_class = WBSHistoryVisitIdentifier;
  v7 = [(WBSHistoryVisitIdentifier *)&v14 init];
  if (v7)
  {
    v8 = [stringCopy copy];
    urlString = v7->_urlString;
    v7->_urlString = v8;

    v7->_visitTime = time;
    v10 = [(NSString *)v7->_urlString hash];
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:time];
    v7->_hash = [v11 hash] ^ v10;

    v12 = v7;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  urlString = self->_urlString;
  visitTime = self->_visitTime;

  return [v4 initWithURLString:urlString visitTime:visitTime];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    visitTime = self->_visitTime;
    [v5 visitTime];
    if (visitTime == v7)
    {
      urlString = self->_urlString;
      urlString = [v5 urlString];
      v10 = [(NSString *)urlString isEqualToString:urlString];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p urlString = %@; visitTime = %lf; associatedHistoryItem = %@; associatedHistoryVisit = %@>", v5, self, self->_urlString, *&self->_visitTime, self->_associatedHistoryItem, self->_associatedHistoryVisit];;

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  urlString = self->_urlString;
  coderCopy = coder;
  [coderCopy encodeObject:urlString forKey:@"urlString"];
  [coderCopy encodeDouble:@"visitTime" forKey:self->_visitTime];
}

- (WBSHistoryVisitIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = WBSHistoryVisitIdentifier;
  v5 = [(WBSHistoryVisitIdentifier *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"urlString"];
    urlString = v5->_urlString;
    v5->_urlString = v6;

    [coderCopy decodeDoubleForKey:@"visitTime"];
    v5->_visitTime = v8;
    v9 = [(NSString *)v5->_urlString hash];
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:v5->_visitTime];
    v5->_hash = [v10 hash] ^ v9;

    v11 = v5;
  }

  return v5;
}

@end