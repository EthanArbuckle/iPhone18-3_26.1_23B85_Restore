@interface SearchUICardViewStateRestorationContext
- (SearchUICardViewStateRestorationContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SearchUICardViewStateRestorationContext

- (SearchUICardViewStateRestorationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SearchUICardViewStateRestorationContext;
  v5 = [(SearchUICollectionViewRestorationContext *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"card"];
    card = v5->_card;
    v5->_card = v6;

    v5->_level = [coderCopy decodeInt64ForKey:@"level"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SearchUICardViewStateRestorationContext;
  coderCopy = coder;
  [(SearchUICollectionViewRestorationContext *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_card forKey:{@"card", v5.receiver, v5.super_class}];
  [coderCopy encodeInt64:self->_level forKey:@"level"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = SearchUICardViewStateRestorationContext;
  v4 = [(SearchUICollectionViewRestorationContext *)&v7 copyWithZone:zone];
  card = [(SearchUICardViewStateRestorationContext *)self card];
  [v4 setCard:card];

  [v4 setLevel:{-[SearchUICardViewStateRestorationContext level](self, "level")}];
  return v4;
}

@end