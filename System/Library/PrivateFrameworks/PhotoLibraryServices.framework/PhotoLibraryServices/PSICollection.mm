@interface PSICollection
- (PSICollection)initWithUUID:(id)d startDate:(id)date endDate:(id)endDate title:(id)title subtitle:(id)subtitle type:(unint64_t)type assetsCountPrivate:(unint64_t)private assetsCountShared:(unint64_t)self0 sortDate:(id)self1;
- (id)_initForCopy:(BOOL)copy;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation PSICollection

- (id)description
{
  v3 = objc_opt_new();
  uuid = [(PSIObject *)self uuid];
  [v3 appendFormat:@"UUID: %@, ", uuid];

  [v3 appendFormat:@"Title: %@, ", self->_title];
  [v3 appendFormat:@"subtitle: %@, ", self->_subtitle];
  [v3 appendFormat:@"assetsCountPrivate: %lu, ", self->_assetsCountPrivate];
  [v3 appendFormat:@"assetsCountShared: %lu, ", self->_assetsCountShared];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = PSICollection;
  v4 = [(PSIObject *)&v10 copyWithZone:zone];
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

- (id)_initForCopy:(BOOL)copy
{
  v8.receiver = self;
  v8.super_class = PSICollection;
  v4 = [(PSIObject *)&v8 _initForCopy:?];
  if (v4 && !copy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AEC0]);
    v6 = v4[7];
    v4[7] = v5;
  }

  return v4;
}

- (PSICollection)initWithUUID:(id)d startDate:(id)date endDate:(id)endDate title:(id)title subtitle:(id)subtitle type:(unint64_t)type assetsCountPrivate:(unint64_t)private assetsCountShared:(unint64_t)self0 sortDate:(id)self1
{
  dateCopy = date;
  endDateCopy = endDate;
  titleCopy = title;
  subtitleCopy = subtitle;
  sortDateCopy = sortDate;
  v30.receiver = self;
  v30.super_class = PSICollection;
  v22 = [(PSIObject *)&v30 initWithUUID:d];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_startDate, date);
    objc_storeStrong(&v23->_endDate, endDate);
    v24 = [titleCopy copy];
    title = v23->_title;
    v23->_title = v24;

    v26 = [subtitleCopy copy];
    subtitle = v23->_subtitle;
    v23->_subtitle = v26;

    v23->_type = type;
    v23->_assetsCountPrivate = private;
    v23->_assetsCountShared = shared;
    objc_storeStrong(&v23->_sortDate, sortDate);
  }

  return v23;
}

@end