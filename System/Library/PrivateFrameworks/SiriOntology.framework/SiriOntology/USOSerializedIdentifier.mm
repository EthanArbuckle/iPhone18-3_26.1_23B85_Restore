@interface USOSerializedIdentifier
- (USOSerializedIdentifier)initWithCoder:(id)coder;
- (USOSerializedIdentifier)initWithNodeIndex:(unint64_t)index value:(id)value appBundleId:(id)id namespaceString:(id)string probability:(id)probability sourceComponent:(id)component groupIndex:(id)groupIndex interpretationGroup:(id)self0;
- (void)encodeWithCoder:(id)coder;
@end

@implementation USOSerializedIdentifier

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedLongLong:{-[USOSerializedIdentifier nodeIndex](self, "nodeIndex")}];
  [coderCopy encodeObject:v6 forKey:@"nodeIndex"];

  value = [(USOSerializedIdentifier *)self value];
  [coderCopy encodeObject:value forKey:@"value"];

  appBundleId = [(USOSerializedIdentifier *)self appBundleId];
  [coderCopy encodeObject:appBundleId forKey:@"appBundleId"];

  namespaceString = [(USOSerializedIdentifier *)self namespaceString];
  [coderCopy encodeObject:namespaceString forKey:@"namespaceString"];

  probability = [(USOSerializedIdentifier *)self probability];
  [coderCopy encodeObject:probability forKey:@"probability"];

  sourceComponent = [(USOSerializedIdentifier *)self sourceComponent];
  [coderCopy encodeObject:sourceComponent forKey:@"sourceComponent"];

  groupIndex = [(USOSerializedIdentifier *)self groupIndex];
  [coderCopy encodeObject:groupIndex forKey:@"groupIndex"];

  interpretationGroup = [(USOSerializedIdentifier *)self interpretationGroup];
  [coderCopy encodeObject:interpretationGroup forKey:@"interpretationGroup"];
}

- (USOSerializedIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = USOSerializedIdentifier;
  v5 = [(USOSerializedIdentifier *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nodeIndex"];
    v5->_nodeIndex = [v6 unsignedLongLongValue];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBundleId"];
    appBundleId = v5->_appBundleId;
    v5->_appBundleId = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"namespaceString"];
    namespaceString = v5->_namespaceString;
    v5->_namespaceString = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"probability"];
    probability = v5->_probability;
    v5->_probability = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceComponent"];
    sourceComponent = v5->_sourceComponent;
    v5->_sourceComponent = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupIndex"];
    groupIndex = v5->_groupIndex;
    v5->_groupIndex = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interpretationGroup"];
    interpretationGroup = v5->_interpretationGroup;
    v5->_interpretationGroup = v19;
  }

  return v5;
}

- (USOSerializedIdentifier)initWithNodeIndex:(unint64_t)index value:(id)value appBundleId:(id)id namespaceString:(id)string probability:(id)probability sourceComponent:(id)component groupIndex:(id)groupIndex interpretationGroup:(id)self0
{
  valueCopy = value;
  idCopy = id;
  stringCopy = string;
  probabilityCopy = probability;
  componentCopy = component;
  groupIndexCopy = groupIndex;
  groupCopy = group;
  v27.receiver = self;
  v27.super_class = USOSerializedIdentifier;
  v18 = [(USOSerializedIdentifier *)&v27 init];
  v19 = v18;
  if (v18)
  {
    v18->_nodeIndex = index;
    objc_storeStrong(&v18->_value, value);
    objc_storeStrong(&v19->_appBundleId, id);
    objc_storeStrong(&v19->_namespaceString, string);
    objc_storeStrong(&v19->_probability, probability);
    objc_storeStrong(&v19->_sourceComponent, component);
    objc_storeStrong(&v19->_groupIndex, groupIndex);
    objc_storeStrong(&v19->_interpretationGroup, group);
  }

  return v19;
}

@end