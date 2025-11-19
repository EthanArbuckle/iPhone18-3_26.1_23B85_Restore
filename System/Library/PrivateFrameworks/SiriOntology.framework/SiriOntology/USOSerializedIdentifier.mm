@interface USOSerializedIdentifier
- (USOSerializedIdentifier)initWithCoder:(id)a3;
- (USOSerializedIdentifier)initWithNodeIndex:(unint64_t)a3 value:(id)a4 appBundleId:(id)a5 namespaceString:(id)a6 probability:(id)a7 sourceComponent:(id)a8 groupIndex:(id)a9 interpretationGroup:(id)a10;
- (void)encodeWithCoder:(id)a3;
@end

@implementation USOSerializedIdentifier

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithUnsignedLongLong:{-[USOSerializedIdentifier nodeIndex](self, "nodeIndex")}];
  [v5 encodeObject:v6 forKey:@"nodeIndex"];

  v7 = [(USOSerializedIdentifier *)self value];
  [v5 encodeObject:v7 forKey:@"value"];

  v8 = [(USOSerializedIdentifier *)self appBundleId];
  [v5 encodeObject:v8 forKey:@"appBundleId"];

  v9 = [(USOSerializedIdentifier *)self namespaceString];
  [v5 encodeObject:v9 forKey:@"namespaceString"];

  v10 = [(USOSerializedIdentifier *)self probability];
  [v5 encodeObject:v10 forKey:@"probability"];

  v11 = [(USOSerializedIdentifier *)self sourceComponent];
  [v5 encodeObject:v11 forKey:@"sourceComponent"];

  v12 = [(USOSerializedIdentifier *)self groupIndex];
  [v5 encodeObject:v12 forKey:@"groupIndex"];

  v13 = [(USOSerializedIdentifier *)self interpretationGroup];
  [v5 encodeObject:v13 forKey:@"interpretationGroup"];
}

- (USOSerializedIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = USOSerializedIdentifier;
  v5 = [(USOSerializedIdentifier *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nodeIndex"];
    v5->_nodeIndex = [v6 unsignedLongLongValue];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appBundleId"];
    appBundleId = v5->_appBundleId;
    v5->_appBundleId = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"namespaceString"];
    namespaceString = v5->_namespaceString;
    v5->_namespaceString = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"probability"];
    probability = v5->_probability;
    v5->_probability = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceComponent"];
    sourceComponent = v5->_sourceComponent;
    v5->_sourceComponent = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupIndex"];
    groupIndex = v5->_groupIndex;
    v5->_groupIndex = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interpretationGroup"];
    interpretationGroup = v5->_interpretationGroup;
    v5->_interpretationGroup = v19;
  }

  return v5;
}

- (USOSerializedIdentifier)initWithNodeIndex:(unint64_t)a3 value:(id)a4 appBundleId:(id)a5 namespaceString:(id)a6 probability:(id)a7 sourceComponent:(id)a8 groupIndex:(id)a9 interpretationGroup:(id)a10
{
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v16 = a9;
  v17 = a10;
  v27.receiver = self;
  v27.super_class = USOSerializedIdentifier;
  v18 = [(USOSerializedIdentifier *)&v27 init];
  v19 = v18;
  if (v18)
  {
    v18->_nodeIndex = a3;
    objc_storeStrong(&v18->_value, a4);
    objc_storeStrong(&v19->_appBundleId, a5);
    objc_storeStrong(&v19->_namespaceString, a6);
    objc_storeStrong(&v19->_probability, a7);
    objc_storeStrong(&v19->_sourceComponent, a8);
    objc_storeStrong(&v19->_groupIndex, a9);
    objc_storeStrong(&v19->_interpretationGroup, a10);
  }

  return v19;
}

@end