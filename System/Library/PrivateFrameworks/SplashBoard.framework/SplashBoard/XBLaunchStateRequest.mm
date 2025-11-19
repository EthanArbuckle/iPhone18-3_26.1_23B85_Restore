@interface XBLaunchStateRequest
- (BOOL)isEqual:(id)a3;
- (CGSize)naturalSize;
- (CGSize)referenceSize;
- (XBLaunchStateRequest)initWithXPCDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)encodeWithXPCDictionary:(id)a3;
- (void)setInterfaceOrientation:(int64_t)a3;
- (void)setNaturalSize:(CGSize)a3;
- (void)setReferenceSize:(CGSize)a3;
@end

@implementation XBLaunchStateRequest

- (CGSize)referenceSize
{
  width = self->_referenceSize.width;
  height = self->_referenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (XBLaunchStateRequest)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = XBLaunchStateRequest;
  v5 = [(XBLaunchStateRequest *)&v21 init];
  if (v5)
  {
    v6 = BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionaryWithKey();
    displayConfiguration = v5->_displayConfiguration;
    v5->_displayConfiguration = v6;

    v8 = BSCreateDeserializedCFValueFromXPCDictionaryWithKey();
    groupID = v5->_groupID;
    v5->_groupID = v8;

    v5->_statusBarState = xpc_dictionary_get_int64(v4, "statusBarState");
    BSDeserializeCGSizeFromXPCDictionaryWithKey();
    v5->_referenceSize.width = v10;
    v5->_referenceSize.height = v11;
    BSDeserializeCGSizeFromXPCDictionaryWithKey();
    v5->_naturalSize.width = v12;
    v5->_naturalSize.height = v13;
    v5->_interfaceOrientation = xpc_dictionary_get_int64(v4, "interfaceOrientation");
    v5->_userInterfaceStyle = xpc_dictionary_get_int64(v4, "userInterfaceStyle");
    v14 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
    customSafeAreaInsets = v5->_customSafeAreaInsets;
    v5->_customSafeAreaInsets = v14;

    v16 = BSCreateDeserializedCFValueFromXPCDictionaryWithKey();
    urlSchemeName = v5->_urlSchemeName;
    v5->_urlSchemeName = v16;

    v18 = BSCreateDeserializedCFValueFromXPCDictionaryWithKey();
    launchInterfaceIdentifier = v5->_launchInterfaceIdentifier;
    v5->_launchInterfaceIdentifier = v18;
  }

  return v5;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  xdict = a3;
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  BSSerializeCFValueToXPCDictionaryWithKey();
  xpc_dictionary_set_int64(xdict, "statusBarState", self->_statusBarState);
  BSSerializeCGSizeToXPCDictionaryWithKey();
  BSSerializeCGSizeToXPCDictionaryWithKey();
  xpc_dictionary_set_int64(xdict, "interfaceOrientation", self->_interfaceOrientation);
  xpc_dictionary_set_int64(xdict, "userInterfaceStyle", self->_userInterfaceStyle);
  BSSerializeCFValueToXPCDictionaryWithKey();
  BSSerializeCFValueToXPCDictionaryWithKey();
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = xpc_dictionary_create(0, 0, 0);
  [(XBLaunchStateRequest *)self encodeWithXPCDictionary:v5];
  v6 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithXPCDictionary:", v5}];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 groupID];
    if (BSEqualStrings() && (([v5 referenceSize], self->_referenceSize.width == v8) ? (v9 = self->_referenceSize.height == v7) : (v9 = 0), v9 && (statusBarState = self->_statusBarState, statusBarState == objc_msgSend(v5, "statusBarState")) && (interfaceOrientation = self->_interfaceOrientation, interfaceOrientation == objc_msgSend(v5, "interfaceOrientation")) && (userInterfaceStyle = self->_userInterfaceStyle, userInterfaceStyle == objc_msgSend(v5, "userInterfaceStyle"))))
    {
      v13 = [v5 urlSchemeName];
      if (BSEqualStrings())
      {
        v14 = [v5 launchInterfaceIdentifier];
        v15 = BSEqualStrings();
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(XBLaunchStateRequest *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(XBLaunchStateRequest *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_groupID withName:@"groupID"];
  statusBarState = self->_statusBarState;
  if (statusBarState > 2)
  {
    v6 = @"invalid";
  }

  else
  {
    v6 = off_279CF9238[statusBarState];
  }

  v7 = [v3 appendObject:v6 withName:@"statusBar"];
  v8 = [v3 appendSize:@"refSize" withName:{self->_referenceSize.width, self->_referenceSize.height}];
  if (self->_referenceSize.width != self->_naturalSize.width || self->_referenceSize.height != self->_naturalSize.height)
  {
    v10 = [v3 appendSize:@"naturalSize" withName:?];
  }

  v11 = [v3 appendObject:self->_customSafeAreaInsets withName:@"customSafeAreaInsets" skipIfNil:1];
  v12 = XBStringForInterfaceOrientation(self->_interfaceOrientation);
  v13 = [v3 appendObject:v12 withName:@"orientation"];

  v14 = XBStringForUserInterfaceStyle(self->_userInterfaceStyle);
  v15 = [v3 appendObject:v14 withName:@"userInterfaceStyle"];

  v16 = [v3 appendObject:self->_urlSchemeName withName:@"scheme" skipIfNil:1];

  return v3;
}

- (void)setReferenceSize:(CGSize)a3
{
  self->_referenceSize = a3;
  interfaceOrientation = self->_interfaceOrientation;
  if ((interfaceOrientation - 3) > 1)
  {
    if (interfaceOrientation)
    {
      self->_naturalSize = self->_referenceSize;
    }
  }

  else
  {
    self->_naturalSize.width = a3.height;
    self->_naturalSize.height = a3.width;
  }
}

- (void)setNaturalSize:(CGSize)a3
{
  self->_naturalSize = a3;
  interfaceOrientation = self->_interfaceOrientation;
  if ((interfaceOrientation - 3) > 1)
  {
    if (interfaceOrientation)
    {
      self->_referenceSize = self->_naturalSize;
    }
  }

  else
  {
    self->_referenceSize.width = a3.height;
    self->_referenceSize.height = a3.width;
  }
}

- (void)setInterfaceOrientation:(int64_t)a3
{
  self->_interfaceOrientation = a3;
  if (self->_referenceSize.width == *MEMORY[0x277CBF3A8] && self->_referenceSize.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    [(XBLaunchStateRequest *)self setNaturalSize:self->_naturalSize.width, self->_naturalSize.height];
  }

  else
  {
    [(XBLaunchStateRequest *)self setReferenceSize:?];
  }
}

- (CGSize)naturalSize
{
  width = self->_naturalSize.width;
  height = self->_naturalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end