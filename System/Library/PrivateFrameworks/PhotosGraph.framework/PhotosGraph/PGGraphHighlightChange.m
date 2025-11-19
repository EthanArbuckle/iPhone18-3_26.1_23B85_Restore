@interface PGGraphHighlightChange
- (PGGraphHighlightChange)initWithHighlightUUID:(id)a3 updateTypes:(unint64_t)a4;
- (id)description;
@end

@implementation PGGraphHighlightChange

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGGraphHighlightChange;
  v4 = [(PGGraphChange *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ [highlightUUID:%@]", v4, self->_highlightUUID];

  return v5;
}

- (PGGraphHighlightChange)initWithHighlightUUID:(id)a3 updateTypes:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PGGraphHighlightChange;
  v8 = [(PGGraphHighlightChange *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_highlightUUID, a3);
    v9->_updateTypes = a4;
  }

  return v9;
}

@end