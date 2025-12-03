@interface AAXPCEventSubscription
+ (BOOL)_targetDeviceClassMatches:(id)matches;
+ (id)subscriptionWithToken:(unint64_t)token descriptor:(id)descriptor;
- (AAXPCEventSubscription)initWithToken:(unint64_t)token discoveryTypes:(id)types;
- (BOOL)needsToFireEventForDeviceFound:(id)found;
- (void)deviceLost:(id)lost;
@end

@implementation AAXPCEventSubscription

+ (id)subscriptionWithToken:(unint64_t)token descriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (xpc_get_type(descriptorCopy) == &_xpc_type_dictionary)
  {
    v6 = xpc_dictionary_get_array(descriptorCopy, "targetDeviceClasses");
    if (!v6 || [AAXPCEventSubscription _targetDeviceClassMatches:v6])
    {
      v7 = xpc_dictionary_get_array(descriptorCopy, "discoveryTypes");
      if (v7)
      {
        v8 = [[AAXPCEventSubscription alloc] initWithToken:token discoveryTypes:v7];
      }

      else
      {
        if (dword_1002F7310 <= 90 && (dword_1002F7310 != -1 || _LogCategory_Initialize()))
        {
          sub_1001F991C();
        }

        v8 = 0;
      }

      goto LABEL_17;
    }
  }

  else
  {
    if (dword_1002F7310 > 90 || dword_1002F7310 == -1 && !_LogCategory_Initialize())
    {
      v8 = 0;
      goto LABEL_18;
    }

    v6 = CUPrintXPC();
    LogPrintF_safe();
  }

  v8 = 0;
LABEL_17:

LABEL_18:

  return v8;
}

- (AAXPCEventSubscription)initWithToken:(unint64_t)token discoveryTypes:(id)types
{
  typesCopy = types;
  v13.receiver = self;
  v13.super_class = AAXPCEventSubscription;
  v7 = [(AAXPCEventSubscription *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_token = token;
    v9 = objc_alloc_init(NSMutableSet);
    discoveredDevices = v8->_discoveredDevices;
    v8->_discoveredDevices = v9;

    if (xpc_get_type(typesCopy) == &_xpc_type_array)
    {
      xpc_array_apply(typesCopy, &stru_1002BB210);
    }

    v11 = v8;
  }

  return v8;
}

- (BOOL)needsToFireEventForDeviceFound:(id)found
{
  foundCopy = found;
  identifier = [foundCopy identifier];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000039C8;
  v16 = sub_100003890;
  v17 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000D1518;
  v11[3] = &unk_1002B6ED8;
  v11[4] = identifier;
  v11[5] = &v12;
  v6 = objc_retainBlock(v11);
  if (!identifier)
  {
    v9 = @"device does not have identifier";
LABEL_9:
    v10 = v13[5];
    v13[5] = v9;

    v7 = 0;
    goto LABEL_5;
  }

  if (![(AAXPCEventSubscription *)self _discoveryTypeMatches:foundCopy])
  {
    v9 = @"device does not match discovery type";
    goto LABEL_9;
  }

  if (([(NSMutableSet *)self->_discoveredDevices containsObject:identifier]& 1) != 0)
  {
    v9 = @"device already discovered";
    goto LABEL_9;
  }

  [(NSMutableSet *)self->_discoveredDevices addObject:identifier];
  v7 = 1;
LABEL_5:
  (v6[2])(v6);

  _Block_object_dispose(&v12, 8);
  return v7;
}

+ (BOOL)_targetDeviceClassMatches:(id)matches
{
  matchesCopy = matches;
  v4 = matchesCopy;
  if (matchesCopy && xpc_get_type(matchesCopy) == &_xpc_type_array)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    GestaltGetDeviceClass();
    v5 = CUGestaltDeviceClassToString();
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_1000D175C;
    applier[3] = &unk_1002BB238;
    applier[4] = v5;
    applier[5] = &v11;
    xpc_array_apply(v4, applier);
    if (dword_1002F7310 <= 30 && (dword_1002F7310 != -1 || _LogCategory_Initialize()))
    {
      v6 = *(v12 + 24);
      v7 = CUPrintXPC();
      LogPrintF_safe();
    }

    v8 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

- (void)deviceLost:(id)lost
{
  identifier = [lost identifier];
  v5 = identifier;
  if (identifier)
  {
    v6 = identifier;
    identifier = [(NSMutableSet *)self->_discoveredDevices containsObject:identifier];
    v5 = v6;
    if (identifier)
    {
      identifier = [(NSMutableSet *)self->_discoveredDevices removeObject:v6];
      v5 = v6;
    }
  }

  _objc_release_x1(identifier, v5);
}

@end