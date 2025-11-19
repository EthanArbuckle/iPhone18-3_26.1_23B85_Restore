@interface WFHMHomeAreaDescriptor
- (BOOL)isEqual:(id)a3;
- (WFHMHomeAreaDescriptor)initWithCoder:(id)a3;
- (WFHMHomeAreaDescriptor)initWithHome:(id)a3;
- (WFHMHomeAreaDescriptor)initWithRoom:(id)a3 inHome:(id)a4;
- (WFHMHomeAreaDescriptor)initWithUniqueIdentifier:(id)a3 homeIdentifier:(id)a4 name:(id)a5 areaType:(unint64_t)a6 homeName:(id)a7;
- (WFHMHomeAreaDescriptor)initWithZone:(id)a3 inHome:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFHMHomeAreaDescriptor

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v4 = [(WFHMHomeAreaDescriptor *)self uniqueIdentifier];
  v5 = [v4 UUIDString];
  v6 = [v3 combine:v5];

  v7 = [v3 finalize];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFHMHomeAreaDescriptor *)v4 uniqueIdentifier];
      v6 = [(WFHMHomeAreaDescriptor *)self uniqueIdentifier];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(WFHMHomeAreaDescriptor *)self uniqueIdentifier];
  v6 = [v5 copy];
  v7 = [(WFHMHomeAreaDescriptor *)self homeIdentifier];
  v8 = [v7 copy];
  v9 = [(WFHMHomeAreaDescriptor *)self name];
  v10 = [v9 copy];
  v11 = [(WFHMHomeAreaDescriptor *)self areaType];
  v12 = [(WFHMHomeAreaDescriptor *)self homeName];
  v13 = [v12 copy];
  v14 = [v4 initWithUniqueIdentifier:v6 homeIdentifier:v8 name:v10 areaType:v11 homeName:v13];

  return v14;
}

- (WFHMHomeAreaDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"homeIdentifier"];
  v7 = [v4 decodeIntegerForKey:@"areaType"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"homeName"];

  v10 = [(WFHMHomeAreaDescriptor *)self initWithUniqueIdentifier:v5 homeIdentifier:v6 name:v8 areaType:v7 homeName:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(WFHMHomeAreaDescriptor *)self uniqueIdentifier];
  [v8 encodeObject:v4 forKey:@"uniqueIdentifier"];

  v5 = [(WFHMHomeAreaDescriptor *)self homeIdentifier];
  [v8 encodeObject:v5 forKey:@"homeIdentifier"];

  v6 = [(WFHMHomeAreaDescriptor *)self name];
  [v8 encodeObject:v6 forKey:@"name"];

  v7 = [(WFHMHomeAreaDescriptor *)self homeName];
  [v8 encodeObject:v7 forKey:@"homeName"];

  [v8 encodeInteger:-[WFHMHomeAreaDescriptor areaType](self forKey:{"areaType"), @"areaType"}];
}

- (WFHMHomeAreaDescriptor)initWithRoom:(id)a3 inHome:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFHomeAreaPickerParameter.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"room"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"WFHomeAreaPickerParameter.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"home"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [v7 uniqueIdentifier];
  v11 = [v9 uniqueIdentifier];
  v12 = [v7 name];
  v13 = [v9 name];
  v14 = [(WFHMHomeAreaDescriptor *)self initWithUniqueIdentifier:v10 homeIdentifier:v11 name:v12 areaType:2 homeName:v13];

  return v14;
}

- (WFHMHomeAreaDescriptor)initWithZone:(id)a3 inHome:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFHomeAreaPickerParameter.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"zone"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"WFHomeAreaPickerParameter.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"home"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [v7 uniqueIdentifier];
  v11 = [v9 uniqueIdentifier];
  v12 = [v7 name];
  v13 = [v9 name];
  v14 = [(WFHMHomeAreaDescriptor *)self initWithUniqueIdentifier:v10 homeIdentifier:v11 name:v12 areaType:1 homeName:v13];

  return v14;
}

- (WFHMHomeAreaDescriptor)initWithHome:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"WFHomeAreaPickerParameter.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  v6 = [v5 uniqueIdentifier];
  v7 = [v5 uniqueIdentifier];
  v8 = [v5 name];
  v9 = [v5 name];
  v10 = [(WFHMHomeAreaDescriptor *)self initWithUniqueIdentifier:v6 homeIdentifier:v7 name:v8 areaType:0 homeName:v9];

  return v10;
}

- (WFHMHomeAreaDescriptor)initWithUniqueIdentifier:(id)a3 homeIdentifier:(id)a4 name:(id)a5 areaType:(unint64_t)a6 homeName:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = WFHMHomeAreaDescriptor;
  v17 = [(WFHMHomeAreaDescriptor *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_uniqueIdentifier, a3);
    objc_storeStrong(&v18->_homeIdentifier, a4);
    objc_storeStrong(&v18->_name, a5);
    v18->_areaType = a6;
    objc_storeStrong(&v18->_homeName, a7);
    v19 = v18;
  }

  return v18;
}

@end