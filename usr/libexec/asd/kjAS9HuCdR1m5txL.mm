@interface kjAS9HuCdR1m5txL
+ (id)Xw2iAzNBHudJx7Ph:(id)ph;
+ (id)cR9LfsxC1Nz4IZKu;
- (id)serializeDataframeWithSecureCoding;
- (kjAS9HuCdR1m5txL)initWithCoder:(id)coder;
- (kjAS9HuCdR1m5txL)initWithGyF0atX3JpCKc9pK:(id)k qfSDGTGvqd3Hruzg:(int64_t)hruzg;
- (void)encodeWithCoder:(id)coder;
@end

@implementation kjAS9HuCdR1m5txL

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  wgZJLy8f4tn41Pge = [(kjAS9HuCdR1m5txL *)self wgZJLy8f4tn41Pge];
  [coderCopy encodeObject:wgZJLy8f4tn41Pge forKey:@"eV93XIm2DFoleW67"];

  [coderCopy encodeInteger:-[kjAS9HuCdR1m5txL yOtBxuHAYKqZrNQN](self forKey:{"yOtBxuHAYKqZrNQN"), @"PVyDYKUBXCVAefL3"}];
  [coderCopy encodeInteger:-[kjAS9HuCdR1m5txL qfSDGTGvqd3Hruzg](self forKey:{"qfSDGTGvqd3Hruzg"), @"unDWoRY4KcYFWF2p"}];
  gyF0atX3JpCKc9pK = [(kjAS9HuCdR1m5txL *)self GyF0atX3JpCKc9pK];
  [coderCopy encodeObject:gyF0atX3JpCKc9pK forKey:@"z3Urd7zeB4LQNdm7"];

  [coderCopy encodeInteger:-[kjAS9HuCdR1m5txL JmiV9VW8P3Gxz1H7](self forKey:{"JmiV9VW8P3Gxz1H7"), @"t5wyajVqKFbSCYB6"}];
}

- (kjAS9HuCdR1m5txL)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = kjAS9HuCdR1m5txL;
  v5 = [(kjAS9HuCdR1m5txL *)&v11 init];
  if (v5)
  {
    v12[0] = objc_opt_class();
    v12[1] = objc_opt_class();
    v12[2] = objc_opt_class();
    v12[3] = objc_opt_class();
    v12[4] = objc_opt_class();
    v12[5] = objc_opt_class();
    v12[6] = objc_opt_class();
    v12[7] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v12 count:8];
    v7 = [NSSet setWithArray:v6];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eV93XIm2DFoleW67"];
    [(kjAS9HuCdR1m5txL *)v5 setWgZJLy8f4tn41Pge:v8];

    -[kjAS9HuCdR1m5txL setYOtBxuHAYKqZrNQN:](v5, "setYOtBxuHAYKqZrNQN:", [coderCopy decodeIntegerForKey:@"PVyDYKUBXCVAefL3"]);
    -[kjAS9HuCdR1m5txL setQfSDGTGvqd3Hruzg:](v5, "setQfSDGTGvqd3Hruzg:", [coderCopy decodeIntegerForKey:@"unDWoRY4KcYFWF2p"]);
    v9 = [coderCopy decodeObjectOfClasses:v7 forKey:@"z3Urd7zeB4LQNdm7"];
    [(kjAS9HuCdR1m5txL *)v5 setGyF0atX3JpCKc9pK:v9];

    -[kjAS9HuCdR1m5txL setJmiV9VW8P3Gxz1H7:](v5, "setJmiV9VW8P3Gxz1H7:", [coderCopy decodeIntegerForKey:@"t5wyajVqKFbSCYB6"]);
  }

  return v5;
}

+ (id)cR9LfsxC1Nz4IZKu
{
  v2 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:&__NSArray0__struct qfSDGTGvqd3Hruzg:149];

  return v2;
}

+ (id)Xw2iAzNBHudJx7Ph:(id)ph
{
  if (ph)
  {
    phCopy = ph;
    v4 = [[NSData alloc] initWithBase64EncodedString:phCopy options:3];

    v5 = objc_opt_class();
    v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
    v34 = 0;
    v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v6 fromData:v4 error:&v34];
    v8 = v34;
    if (v8)
    {
      v9 = v8;
      v10 = qword_1006DF770;
      if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
      {
        sub_1005940A8(v9, v10, v11, v12, v13, v14, v15, v16);
      }

      v33 = 0;
      v17 = [NSPropertyListSerialization propertyListWithData:v4 options:0 format:0 error:&v33];
      v18 = v33;

      if (v18)
      {
        v19 = qword_1006DF770;
        if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
        {
          sub_100594114(v18, v19, v20, v21, v22, v23, v24, v25);
        }

        v26 = 0;
      }

      else
      {
        v27 = [kjAS9HuCdR1m5txL alloc];
        v28 = [v17 objectForKeyedSubscript:@"Yaq6qLPClqGRAXCx"];
        v29 = [v17 objectForKeyedSubscript:@"iVmTzX1ymXOWRKrv"];
        v26 = -[kjAS9HuCdR1m5txL initWithGyF0atX3JpCKc9pK:qfSDGTGvqd3Hruzg:](v27, "initWithGyF0atX3JpCKc9pK:qfSDGTGvqd3Hruzg:", v28, [v29 integerValue]);

        v30 = [v17 objectForKeyedSubscript:@"14ornzG9W3NaJVpK"];
        -[kjAS9HuCdR1m5txL setYOtBxuHAYKqZrNQN:](v26, "setYOtBxuHAYKqZrNQN:", [v30 integerValue]);

        v31 = [v17 objectForKeyedSubscript:@"mYBuACT5pLzJb26c"];
        [(kjAS9HuCdR1m5txL *)v26 setWgZJLy8f4tn41Pge:v31];
      }
    }

    else
    {
      v26 = v7;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (kjAS9HuCdR1m5txL)initWithGyF0atX3JpCKc9pK:(id)k qfSDGTGvqd3Hruzg:(int64_t)hruzg
{
  objc_storeStrong(&self->_GyF0atX3JpCKc9pK, k);
  self->_qfSDGTGvqd3Hruzg = hruzg;
  self->_yOtBxuHAYKqZrNQN = 0;
  self->_JmiV9VW8P3Gxz1H7 = -1;
  return self;
}

- (id)serializeDataframeWithSecureCoding
{
  v12 = 0;
  v2 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:&v12];
  v3 = v12;
  if (v3)
  {
    v4 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_100594180(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return v2;
}

@end