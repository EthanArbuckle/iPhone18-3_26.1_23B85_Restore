@interface PPQuickTypeItem
+ (id)quickTypeItemWithLabel:(id)a3 value:(id)a4 name:(id)a5 date:(id)a6 fields:(unsigned int)a7 originatingBundleID:(id)a8 originatingWebsiteURL:(id)a9 predictionAge:(unint64_t)a10 shouldAggregate:(BOOL)a11 flags:(unsigned __int8)a12 score:(double)a13 source:(unsigned __int8)a14 sourceIdentifier:(id)a15;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToQuickTypeItem:(id)a3;
- (PPQuickTypeItem)initWithCoder:(id)a3;
- (PPQuickTypeItem)initWithLabel:(id)a3 value:(id)a4 name:(id)a5 date:(id)a6 fields:(unsigned int)a7 originatingBundleID:(id)a8 originatingWebsiteURL:(id)a9 predictionAge:(unint64_t)a10 shouldAggregate:(BOOL)a11 flags:(unsigned __int8)a12 score:(double)a13 source:(unsigned __int8)a14 sourceIdentifier:(id)a15;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPQuickTypeItem

- (int64_t)compare:(id)a3
{
  v4 = a3;
  score = self->_score;
  [v4 score];
  v7 = [PPUtils compareDouble:score withDouble:v6];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    label = self->_label;
    v10 = [v4 label];
    v8 = [(NSString *)label compare:v10];

    if (!v8)
    {
      v11 = self->_name ? self->_name : &stru_1F1B327D8;
      v12 = [v4 name];
      v13 = v12;
      v14 = v12 ? v12 : &stru_1F1B327D8;
      v8 = [(NSString *)v11 compare:v14];

      if (!v8)
      {
        value = self->_value;
        v16 = [v4 value];
        v8 = [(NSString *)value compare:v16];

        if (!v8)
        {
          if (self->_sourceIdentifier)
          {
            sourceIdentifier = self->_sourceIdentifier;
          }

          else
          {
            sourceIdentifier = &stru_1F1B327D8;
          }

          v18 = [v4 sourceIdentifier];
          v19 = v18;
          if (v18)
          {
            v20 = v18;
          }

          else
          {
            v20 = &stru_1F1B327D8;
          }

          v8 = [(__CFString *)sourceIdentifier compare:v20];
        }
      }
    }
  }

  return v8;
}

- (BOOL)isEqualToQuickTypeItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || self->_score != v4[2] || self->_source != *(v4 + 8))
  {
    goto LABEL_34;
  }

  v6 = self->_label;
  v7 = v6;
  if (v6 == *(v5 + 4))
  {
  }

  else
  {
    v8 = [(NSString *)v6 isEqual:?];

    if ((v8 & 1) == 0)
    {
LABEL_34:
      v26 = 0;
      goto LABEL_35;
    }
  }

  v9 = self->_value;
  v10 = v9;
  if (v9 == *(v5 + 5))
  {
  }

  else
  {
    v11 = [(NSString *)v9 isEqual:?];

    if ((v11 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v12 = self->_name;
  v13 = v12;
  if (v12 == *(v5 + 6))
  {
  }

  else
  {
    v14 = [(NSString *)v12 isEqual:?];

    if ((v14 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v15 = self->_date;
  v16 = v15;
  if (v15 == *(v5 + 7))
  {
  }

  else
  {
    v17 = [(NSDate *)v15 isEqual:?];

    if ((v17 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  if (self->_fields != *(v5 + 3) || self->_flags != *(v5 + 10))
  {
    goto LABEL_34;
  }

  v18 = self->_originatingBundleID;
  v19 = v18;
  if (v18 == *(v5 + 8))
  {
  }

  else
  {
    v20 = [(NSString *)v18 isEqual:?];

    if ((v20 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v21 = self->_originatingWebsiteURL;
  v22 = v21;
  if (v21 == *(v5 + 9))
  {
  }

  else
  {
    v23 = [(NSURL *)v21 isEqual:?];

    if ((v23 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  if (self->_predictionAge != *(v5 + 10) || self->_shouldAggregate != *(v5 + 9))
  {
    goto LABEL_34;
  }

  v24 = self->_sourceIdentifier;
  v25 = v24;
  if (v24 == *(v5 + 3))
  {
    v26 = 1;
  }

  else
  {
    v26 = [(NSString *)v24 isEqual:?];
  }

LABEL_35:
  return v26;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPQuickTypeItem *)self isEqualToQuickTypeItem:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v5 = objc_opt_new();
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = self->_source;
    *(v5 + 16) = self->_score;
    v7 = [(NSString *)self->_sourceIdentifier copyWithZone:a3];
    v8 = *(v6 + 24);
    *(v6 + 24) = v7;

    v9 = [(NSString *)self->_label copyWithZone:a3];
    v10 = *(v6 + 32);
    *(v6 + 32) = v9;

    v11 = [(NSString *)self->_value copyWithZone:a3];
    v12 = *(v6 + 40);
    *(v6 + 40) = v11;

    v13 = [(NSString *)self->_name copyWithZone:a3];
    v14 = *(v6 + 48);
    *(v6 + 48) = v13;

    v15 = [(NSDate *)self->_date copyWithZone:a3];
    v16 = *(v6 + 56);
    *(v6 + 56) = v15;

    *(v6 + 12) = self->_fields;
    *(v6 + 10) = self->_flags;
    v17 = [(NSString *)self->_originatingBundleID copyWithZone:a3];
    v18 = *(v6 + 64);
    *(v6 + 64) = v17;

    v19 = [(NSURL *)self->_originatingWebsiteURL copyWithZone:a3];
    v20 = *(v6 + 72);
    *(v6 + 72) = v19;

    *(v6 + 80) = self->_predictionAge;
    *(v6 + 9) = self->_shouldAggregate;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  label = self->_label;
  v5 = a3;
  [v5 encodeObject:label forKey:@"lab"];
  [v5 encodeObject:self->_value forKey:@"val"];
  [v5 encodeObject:self->_name forKey:@"nam"];
  [v5 encodeObject:self->_date forKey:@"dat"];
  [v5 encodeInt32:self->_fields forKey:@"fld"];
  [v5 encodeObject:self->_originatingBundleID forKey:@"obi"];
  [v5 encodeObject:self->_originatingWebsiteURL forKey:@"owu"];
  [v5 encodeInteger:self->_predictionAge forKey:@"pag"];
  [v5 encodeBool:self->_shouldAggregate forKey:@"sag"];
  [v5 encodeInt32:self->_flags forKey:@"flg"];
  [v5 encodeDouble:@"scr" forKey:self->_score];
  [v5 encodeInt32:self->_source forKey:@"src"];
  [v5 encodeObject:self->_sourceIdentifier forKey:@"sid"];
}

- (PPQuickTypeItem)initWithCoder:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"lab"];
  v7 = [v4 decodeObjectOfClass:v5 forKey:@"val"];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = pp_quicktype_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v4;
      _os_log_error_impl(&dword_1A7FD3000, v10, OS_LOG_TYPE_ERROR, "failed to decode label or value from %@", buf, 0xCu);
    }

    v19 = 0;
  }

  else
  {
    v26 = [v4 decodeObjectOfClass:v5 forKey:@"nam"];
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dat"];
    v24 = [v4 decodeInt32ForKey:@"fld"];
    v23 = [v4 decodeObjectOfClass:v5 forKey:@"obi"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"owu"];
    v12 = [v4 decodeIntegerForKey:@"pag"];
    v13 = [v4 decodeBoolForKey:@"sag"];
    v14 = [v4 decodeInt32ForKey:@"flg"];
    [v4 decodeDoubleForKey:@"scr"];
    v16 = v15;
    v17 = [v4 decodeInt32ForKey:@"src"];
    v18 = [v4 decodeObjectOfClass:v5 forKey:@"sid"];
    BYTE2(v22) = v17;
    BYTE1(v22) = v14;
    LOBYTE(v22) = v13;
    self = [PPQuickTypeItem initWithLabel:"initWithLabel:value:name:date:fields:originatingBundleID:originatingWebsiteURL:predictionAge:shouldAggregate:flags:score:source:sourceIdentifier:" value:v6 name:v8 date:v26 fields:v25 originatingBundleID:v24 originatingWebsiteURL:v23 predictionAge:v16 shouldAggregate:v11 flags:v12 score:v22 source:v18 sourceIdentifier:?];

    v19 = self;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (unint64_t)hash
{
  v3 = self->_source - self->_score + 32 * self->_score;
  v4 = [(NSString *)self->_sourceIdentifier hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_label hash]- v4 + 32 * v4;
  v6 = [(NSString *)self->_value hash]- v5 + 32 * v5;
  v7 = [(NSString *)self->_name hash]- v6 + 32 * v6;
  v8 = [(NSDate *)self->_date hash];
  v9 = self->_fields - (v8 - v7 + 32 * v7) + 32 * (v8 - v7 + 32 * v7);
  v10 = self->_flags - v9 + 32 * v9;
  v11 = [(NSString *)self->_originatingBundleID hash]- v10 + 32 * v10;
  v12 = [(NSURL *)self->_originatingWebsiteURL hash];
  v13 = self->_predictionAge - (v12 - v11 + 32 * v11) + 32 * (v12 - v11 + 32 * v11);
  return self->_shouldAggregate - v13 + 32 * v13;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  value = self->_value;
  name = self->_name;
  label = self->_label;
  fields = self->_fields;
  flags = self->_flags;
  [(PPQuickTypeItem *)self score];
  v10 = [v3 initWithFormat:@"<PPQuickTypeItem '%@' %@=%@ (f=%lu) (fl=%lu) (s=%f) (src=%lu)>", name, label, value, fields, flags, v9, -[PPQuickTypeItem source](self, "source")];

  return v10;
}

- (PPQuickTypeItem)initWithLabel:(id)a3 value:(id)a4 name:(id)a5 date:(id)a6 fields:(unsigned int)a7 originatingBundleID:(id)a8 originatingWebsiteURL:(id)a9 predictionAge:(unint64_t)a10 shouldAggregate:(BOOL)a11 flags:(unsigned __int8)a12 score:(double)a13 source:(unsigned __int8)a14 sourceIdentifier:(id)a15
{
  v22 = a3;
  v23 = a4;
  obj = a5;
  v24 = a5;
  v32 = a6;
  v34 = a6;
  v25 = a8;
  v26 = a9;
  v27 = a15;
  v35.receiver = self;
  v35.super_class = PPQuickTypeItem;
  v28 = [(PPQuickTypeItem *)&v35 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_label, a3);
    objc_storeStrong(&v29->_value, a4);
    objc_storeStrong(&v29->_name, obj);
    objc_storeStrong(&v29->_date, v32);
    v29->_fields = a7;
    objc_storeStrong(&v29->_originatingBundleID, a8);
    objc_storeStrong(&v29->_originatingWebsiteURL, a9);
    v29->_predictionAge = a10;
    v29->_shouldAggregate = a11;
    v29->_flags = a12;
    v29->_score = a13;
    v29->_source = a14;
    objc_storeStrong(&v29->_sourceIdentifier, a15);
  }

  return v29;
}

+ (id)quickTypeItemWithLabel:(id)a3 value:(id)a4 name:(id)a5 date:(id)a6 fields:(unsigned int)a7 originatingBundleID:(id)a8 originatingWebsiteURL:(id)a9 predictionAge:(unint64_t)a10 shouldAggregate:(BOOL)a11 flags:(unsigned __int8)a12 score:(double)a13 source:(unsigned __int8)a14 sourceIdentifier:(id)a15
{
  v21 = a15;
  v22 = a9;
  v23 = a8;
  v24 = a6;
  v25 = a5;
  v26 = a4;
  v27 = a3;
  BYTE2(v30) = a14;
  LOWORD(v30) = __PAIR16__(a12, a11);
  v28 = [PPQuickTypeItem initWithLabel:"initWithLabel:value:name:date:fields:originatingBundleID:originatingWebsiteURL:predictionAge:shouldAggregate:flags:score:source:sourceIdentifier:" value:v27 name:v26 date:v25 fields:v24 originatingBundleID:a7 originatingWebsiteURL:v23 predictionAge:a13 shouldAggregate:v22 flags:a10 score:v30 source:v21 sourceIdentifier:?];

  return v28;
}

@end