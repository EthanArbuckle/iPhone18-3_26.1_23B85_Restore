@interface PVAppIdentityDigest
+ (id)digestWithErrorCode:(int64_t)a3;
- (PVAppIdentityDigest)initWithCoder:(id)a3;
- (PVAppIdentityDigest)initWithError:(id)a3 version:(id)a4;
- (PVAppIdentityDigest)initWithVersion:(id)a3 data0:(id)a4 data1:(id)a5 data2:(id)a6 data3:(id)a7 data4:(id)a8 data5:(id)a9;
- (id)asDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PVAppIdentityDigest

- (PVAppIdentityDigest)initWithVersion:(id)a3 data0:(id)a4 data1:(id)a5 data2:(id)a6 data3:(id)a7 data4:(id)a8 data5:(id)a9
{
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v23 = a6;
  v22 = a7;
  v16 = a8;
  v17 = a9;
  v27.receiver = self;
  v27.super_class = PVAppIdentityDigest;
  v18 = [(PVAppIdentityDigest *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->version, a3);
    objc_storeStrong(&v19->data0, a4);
    objc_storeStrong(&v19->data1, a5);
    objc_storeStrong(&v19->data2, a6);
    objc_storeStrong(&v19->data3, a7);
    objc_storeStrong(&v19->data4, a8);
    objc_storeStrong(&v19->data5, a9);
    error = v19->error;
    v19->error = 0;
  }

  return v19;
}

- (PVAppIdentityDigest)initWithError:(id)a3 version:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = PVAppIdentityDigest;
  v8 = [(PVAppIdentityDigest *)&v18 init];
  if (v8)
  {
    v9 = [NSError pvai_wrappedError:-10000 error:v6];
    objc_storeStrong(&v8->version, a4);
    data0 = v8->data0;
    v8->data0 = 0;

    data1 = v8->data1;
    v8->data1 = 0;

    data2 = v8->data2;
    v8->data2 = 0;

    data3 = v8->data3;
    v8->data3 = 0;

    data4 = v8->data4;
    v8->data4 = 0;

    data5 = v8->data5;
    v8->data5 = 0;

    error = v8->error;
    v8->error = v9;
  }

  return v8;
}

+ (id)digestWithErrorCode:(int64_t)a3
{
  v4 = [PVAppIdentityDigest alloc];
  v5 = [NSError pvai_errorWithCode:a3];
  v6 = [(PVAppIdentityDigest *)v4 initWithError:v5 version:&off_100021908];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  version = self->version;
  v5 = a3;
  [v5 encodeObject:version forKey:@"version"];
  [v5 encodeObject:self->data0 forKey:@"data0"];
  [v5 encodeObject:self->data1 forKey:@"data1"];
  [v5 encodeObject:self->data2 forKey:@"data2"];
  [v5 encodeObject:self->data3 forKey:@"data3"];
  [v5 encodeObject:self->data4 forKey:@"data4"];
  [v5 encodeObject:self->data5 forKey:@"data5"];
  [v5 encodeObject:self->error forKey:@"error"];
}

- (PVAppIdentityDigest)initWithCoder:(id)a3
{
  v22.receiver = self;
  v22.super_class = PVAppIdentityDigest;
  v3 = a3;
  v4 = [(PVAppIdentityDigest *)&v22 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"version", v22.receiver, v22.super_class}];
  version = v4->version;
  v4->version = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"data0"];
  data0 = v4->data0;
  v4->data0 = v7;

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"data1"];
  data1 = v4->data1;
  v4->data1 = v9;

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"data2"];
  data2 = v4->data2;
  v4->data2 = v11;

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"data3"];
  data3 = v4->data3;
  v4->data3 = v13;

  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"data4"];
  data4 = v4->data4;
  v4->data4 = v15;

  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"data5"];
  data5 = v4->data5;
  v4->data5 = v17;

  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"error"];

  error = v4->error;
  v4->error = v19;

  return v4;
}

- (id)asDictionary
{
  error = self->error;
  if (error)
  {
    v4 = [(NSError *)error code];
    version = self->version;
    v17[0] = @"version";
    v17[1] = @"error";
    v18[0] = version;
    v6 = [NSNumber numberWithInteger:v4];
    v18[1] = v6;
    v7 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  }

  else
  {
    data0 = self->data0;
    v16[0] = self->version;
    v15[0] = @"version";
    v15[1] = @"data0";
    v6 = [(NSData *)data0 base64EncodedStringWithOptions:0];
    v16[1] = v6;
    v15[2] = @"data1";
    v9 = [(NSData *)self->data1 base64EncodedStringWithOptions:0];
    v16[2] = v9;
    v15[3] = @"data2";
    v10 = [(NSData *)self->data2 base64EncodedStringWithOptions:0];
    v16[3] = v10;
    v15[4] = @"data3";
    v11 = [(NSData *)self->data3 base64EncodedStringWithOptions:0];
    v16[4] = v11;
    v15[5] = @"data4";
    v12 = [(NSData *)self->data4 base64EncodedStringWithOptions:0];
    v16[5] = v12;
    v15[6] = @"data5";
    v13 = [(NSData *)self->data5 base64EncodedStringWithOptions:0];
    v16[6] = v13;
    v7 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:7];
  }

  return v7;
}

@end