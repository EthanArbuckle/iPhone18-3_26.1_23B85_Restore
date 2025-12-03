@interface BMSyncCRDTLocationRow
- (BMSyncCRDTLocationRow)initWithFMResultSet:(id)set modifier:(unint64_t)modifier;
- (BMSyncCRDTLocationRow)initWithLocation:(id)location state:(unint64_t)state primaryKey:(unint64_t)key;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation BMSyncCRDTLocationRow

- (BMSyncCRDTLocationRow)initWithLocation:(id)location state:(unint64_t)state primaryKey:(unint64_t)key
{
  locationCopy = location;
  v13.receiver = self;
  v13.super_class = BMSyncCRDTLocationRow;
  v10 = [(BMSyncCRDTLocationRow *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_location, location);
    v11->_state = state;
    v11->_primaryKey = key;
  }

  return v11;
}

- (id)description
{
  v2 = [[NSString alloc] initWithFormat:@"<%@: location=%@, state=%lu>", objc_opt_class(), self->_location, self->_state];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    location = self->_location;
    location = [(BMSyncCRDTLocationRow *)equalCopy location];
    if ([(BMStreamCRDTLocation *)location isEqual:location])
    {
      state = self->_state;
      v9 = state == [(BMSyncCRDTLocationRow *)v5 state];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(BMStreamCRDTLocation *)self->_location hash];
  v4 = [NSNumber numberWithUnsignedInteger:self->_state];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BMSyncCRDTLocationRow)initWithFMResultSet:(id)set modifier:(unint64_t)modifier
{
  setCopy = set;
  if (modifier >= 3)
  {
    v25 = __biome_log_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1000476D4(modifier, v25);
    }

    v17 = 0;
  }

  else
  {
    v7 = *(&off_100078AF8 + modifier);
    v8 = [[NSString alloc] initWithFormat:@"%@%@", v7, @"stream"];
    v9 = [setCopy stringForColumn:v8];

    v10 = [[NSString alloc] initWithFormat:@"%@%@", v7, @"site"];
    v11 = [setCopy stringForColumn:v10];

    v12 = [[NSString alloc] initWithFormat:@"%@%@", v7, @"day"];
    [setCopy doubleForColumn:v12];
    v14 = v13;

    v15 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:v14];
    v16 = v15;
    if (modifier == 1 || (v17 = 0, v9) && v11 && v15)
    {
      v18 = [[BMStreamCRDTLocation alloc] initWithStreamName:v9 siteIdentifier:v11 day:v15];
      if (v18)
      {
        selfCopy = self;
        v19 = [[NSString alloc] initWithFormat:@"%@%@", v7, @"state"];
        v20 = [setCopy intForColumn:v19];

        v21 = [[NSString alloc] initWithFormat:@"%@%@", v7, @"id"];
        v22 = [setCopy intForColumn:v21];

        v23 = [BMSyncCRDTLocationRow alloc];
        v24 = v22;
        self = selfCopy;
        v17 = [(BMSyncCRDTLocationRow *)v23 initWithLocation:v18 state:v20 primaryKey:v24];
      }

      else
      {
        v17 = 0;
      }
    }
  }

  return v17;
}

@end