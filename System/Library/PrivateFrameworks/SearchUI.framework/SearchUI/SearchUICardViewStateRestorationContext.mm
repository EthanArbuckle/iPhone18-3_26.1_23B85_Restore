@interface SearchUICardViewStateRestorationContext
- (SearchUICardViewStateRestorationContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SearchUICardViewStateRestorationContext

- (SearchUICardViewStateRestorationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SearchUICardViewStateRestorationContext;
  v5 = [(SearchUICollectionViewRestorationContext *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"card"];
    card = v5->_card;
    v5->_card = v6;

    v5->_level = [v4 decodeInt64ForKey:@"level"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SearchUICardViewStateRestorationContext;
  v4 = a3;
  [(SearchUICollectionViewRestorationContext *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_card forKey:{@"card", v5.receiver, v5.super_class}];
  [v4 encodeInt64:self->_level forKey:@"level"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = SearchUICardViewStateRestorationContext;
  v4 = [(SearchUICollectionViewRestorationContext *)&v7 copyWithZone:a3];
  v5 = [(SearchUICardViewStateRestorationContext *)self card];
  [v4 setCard:v5];

  [v4 setLevel:{-[SearchUICardViewStateRestorationContext level](self, "level")}];
  return v4;
}

@end