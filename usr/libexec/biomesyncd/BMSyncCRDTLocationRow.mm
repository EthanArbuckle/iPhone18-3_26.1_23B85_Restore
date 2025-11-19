@interface BMSyncCRDTLocationRow
- (BMSyncCRDTLocationRow)initWithFMResultSet:(id)a3 modifier:(unint64_t)a4;
- (BMSyncCRDTLocationRow)initWithLocation:(id)a3 state:(unint64_t)a4 primaryKey:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation BMSyncCRDTLocationRow

- (BMSyncCRDTLocationRow)initWithLocation:(id)a3 state:(unint64_t)a4 primaryKey:(unint64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = BMSyncCRDTLocationRow;
  v10 = [(BMSyncCRDTLocationRow *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_location, a3);
    v11->_state = a4;
    v11->_primaryKey = a5;
  }

  return v11;
}

- (id)description
{
  v2 = [[NSString alloc] initWithFormat:@"<%@: location=%@, state=%lu>", objc_opt_class(), self->_location, self->_state];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    location = self->_location;
    v7 = [(BMSyncCRDTLocationRow *)v4 location];
    if ([(BMStreamCRDTLocation *)location isEqual:v7])
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

- (BMSyncCRDTLocationRow)initWithFMResultSet:(id)a3 modifier:(unint64_t)a4
{
  v6 = a3;
  if (a4 >= 3)
  {
    v25 = __biome_log_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1000476D4(a4, v25);
    }

    v17 = 0;
  }

  else
  {
    v7 = *(&off_100078AF8 + a4);
    v8 = [[NSString alloc] initWithFormat:@"%@%@", v7, @"stream"];
    v9 = [v6 stringForColumn:v8];

    v10 = [[NSString alloc] initWithFormat:@"%@%@", v7, @"site"];
    v11 = [v6 stringForColumn:v10];

    v12 = [[NSString alloc] initWithFormat:@"%@%@", v7, @"day"];
    [v6 doubleForColumn:v12];
    v14 = v13;

    v15 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:v14];
    v16 = v15;
    if (a4 == 1 || (v17 = 0, v9) && v11 && v15)
    {
      v18 = [[BMStreamCRDTLocation alloc] initWithStreamName:v9 siteIdentifier:v11 day:v15];
      if (v18)
      {
        v27 = self;
        v19 = [[NSString alloc] initWithFormat:@"%@%@", v7, @"state"];
        v20 = [v6 intForColumn:v19];

        v21 = [[NSString alloc] initWithFormat:@"%@%@", v7, @"id"];
        v22 = [v6 intForColumn:v21];

        v23 = [BMSyncCRDTLocationRow alloc];
        v24 = v22;
        self = v27;
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