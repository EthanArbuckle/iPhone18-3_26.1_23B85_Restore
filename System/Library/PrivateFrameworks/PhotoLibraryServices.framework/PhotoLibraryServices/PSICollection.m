@interface PSICollection
- (PSICollection)initWithUUID:(id)a3 startDate:(id)a4 endDate:(id)a5 title:(id)a6 subtitle:(id)a7 type:(unint64_t)a8 assetsCountPrivate:(unint64_t)a9 assetsCountShared:(unint64_t)a10 sortDate:(id)a11;
- (id)_initForCopy:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation PSICollection

- (id)description
{
  v3 = objc_opt_new();
  v4 = [(PSIObject *)self uuid];
  [v3 appendFormat:@"UUID: %@, ", v4];

  [v3 appendFormat:@"Title: %@, ", self->_title];
  [v3 appendFormat:@"subtitle: %@, ", self->_subtitle];
  [v3 appendFormat:@"assetsCountPrivate: %lu, ", self->_assetsCountPrivate];
  [v3 appendFormat:@"assetsCountShared: %lu, ", self->_assetsCountShared];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = PSICollection;
  v4 = [(PSIObject *)&v10 copyWithZone:a3];
  objc_storeStrong(v4 + 5, self->_startDate);
  objc_storeStrong(v4 + 6, self->_endDate);
  v5 = [(NSString *)self->_title copy];
  v6 = v4[7];
  v4[7] = v5;

  v7 = [(NSString *)self->_subtitle copy];
  v8 = v4[8];
  v4[8] = v7;

  v4[9] = self->_type;
  v4[11] = self->_assetsCountPrivate;
  v4[12] = self->_assetsCountShared;
  objc_storeStrong(v4 + 10, self->_sortDate);
  return v4;
}

- (id)_initForCopy:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = PSICollection;
  v4 = [(PSIObject *)&v8 _initForCopy:?];
  if (v4 && !a3)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AEC0]);
    v6 = v4[7];
    v4[7] = v5;
  }

  return v4;
}

- (PSICollection)initWithUUID:(id)a3 startDate:(id)a4 endDate:(id)a5 title:(id)a6 subtitle:(id)a7 type:(unint64_t)a8 assetsCountPrivate:(unint64_t)a9 assetsCountShared:(unint64_t)a10 sortDate:(id)a11
{
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a11;
  v30.receiver = self;
  v30.super_class = PSICollection;
  v22 = [(PSIObject *)&v30 initWithUUID:a3];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_startDate, a4);
    objc_storeStrong(&v23->_endDate, a5);
    v24 = [v19 copy];
    title = v23->_title;
    v23->_title = v24;

    v26 = [v20 copy];
    subtitle = v23->_subtitle;
    v23->_subtitle = v26;

    v23->_type = a8;
    v23->_assetsCountPrivate = a9;
    v23->_assetsCountShared = a10;
    objc_storeStrong(&v23->_sortDate, a11);
  }

  return v23;
}

@end