@interface PGGraphMomentChange
- (PGGraphMomentChange)initWithMomentUUID:(id)a3 updateTypes:(unint64_t)a4;
- (id)description;
@end

@implementation PGGraphMomentChange

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PGGraphMomentChange;
  v4 = [(PGGraphChange *)&v8 description];
  v5 = _stringForGraphMomentUpdateTypes(self->_updateTypes);
  v6 = [v3 stringWithFormat:@"%@ [updateTypes:%@][momentUUID:%@]", v4, v5, self->_momentUUID];

  return v6;
}

- (PGGraphMomentChange)initWithMomentUUID:(id)a3 updateTypes:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PGGraphMomentChange;
  v8 = [(PGGraphMomentChange *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_momentUUID, a3);
    v9->_updateTypes = a4;
  }

  return v9;
}

@end