@interface PGGraphHighlightsDeletion
- (PGGraphHighlightsDeletion)initWithHighlightUUIDs:(id)ds;
- (id)description;
@end

@implementation PGGraphHighlightsDeletion

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGGraphHighlightsDeletion;
  v4 = [(PGGraphChange *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@, highlightUUIDs (%ld): %@", v4, -[NSSet count](self->_highlightUUIDs, "count"), self->_highlightUUIDs];

  return v5;
}

- (PGGraphHighlightsDeletion)initWithHighlightUUIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = PGGraphHighlightsDeletion;
  v6 = [(PGGraphHighlightsDeletion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_highlightUUIDs, ds);
  }

  return v7;
}

@end