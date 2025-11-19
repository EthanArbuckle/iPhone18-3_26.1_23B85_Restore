@interface AAXPCEventSubscription
+ (BOOL)_targetDeviceClassMatches:(id)a3;
+ (id)subscriptionWithToken:(unint64_t)a3 descriptor:(id)a4;
- (AAXPCEventSubscription)initWithToken:(unint64_t)a3 discoveryTypes:(id)a4;
- (BOOL)needsToFireEventForDeviceFound:(id)a3;
- (void)deviceLost:(id)a3;
@end

@implementation AAXPCEventSubscription

+ (id)subscriptionWithToken:(unint64_t)a3 descriptor:(id)a4
{
  v5 = a4;
  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    v6 = xpc_dictionary_get_array(v5, "targetDeviceClasses");
    if (!v6 || [AAXPCEventSubscription _targetDeviceClassMatches:v6])
    {
      v7 = xpc_dictionary_get_array(v5, "discoveryTypes");
      if (v7)
      {
        v8 = [[AAXPCEventSubscription alloc] initWithToken:a3 discoveryTypes:v7];
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

- (AAXPCEventSubscription)initWithToken:(unint64_t)a3 discoveryTypes:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = AAXPCEventSubscription;
  v7 = [(AAXPCEventSubscription *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_token = a3;
    v9 = objc_alloc_init(NSMutableSet);
    discoveredDevices = v8->_discoveredDevices;
    v8->_discoveredDevices = v9;

    if (xpc_get_type(v6) == &_xpc_type_array)
    {
      xpc_array_apply(v6, &stru_1002BB210);
    }

    v11 = v8;
  }

  return v8;
}

- (BOOL)needsToFireEventForDeviceFound:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
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
  v11[4] = v5;
  v11[5] = &v12;
  v6 = objc_retainBlock(v11);
  if (!v5)
  {
    v9 = @"device does not have identifier";
LABEL_9:
    v10 = v13[5];
    v13[5] = v9;

    v7 = 0;
    goto LABEL_5;
  }

  if (![(AAXPCEventSubscription *)self _discoveryTypeMatches:v4])
  {
    v9 = @"device does not match discovery type";
    goto LABEL_9;
  }

  if (([(NSMutableSet *)self->_discoveredDevices containsObject:v5]& 1) != 0)
  {
    v9 = @"device already discovered";
    goto LABEL_9;
  }

  [(NSMutableSet *)self->_discoveredDevices addObject:v5];
  v7 = 1;
LABEL_5:
  (v6[2])(v6);

  _Block_object_dispose(&v12, 8);
  return v7;
}

+ (BOOL)_targetDeviceClassMatches:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_array)
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

- (void)deviceLost:(id)a3
{
  v4 = [a3 identifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(NSMutableSet *)self->_discoveredDevices containsObject:v4];
    v5 = v6;
    if (v4)
    {
      v4 = [(NSMutableSet *)self->_discoveredDevices removeObject:v6];
      v5 = v6;
    }
  }

  _objc_release_x1(v4, v5);
}

@end