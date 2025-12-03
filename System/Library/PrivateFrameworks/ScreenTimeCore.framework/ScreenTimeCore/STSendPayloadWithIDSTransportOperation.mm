@interface STSendPayloadWithIDSTransportOperation
- (STSendPayloadWithIDSTransportOperation)initWithPayload:(id)payload destinations:(id)destinations service:(id)service;
- (void)main;
@end

@implementation STSendPayloadWithIDSTransportOperation

- (STSendPayloadWithIDSTransportOperation)initWithPayload:(id)payload destinations:(id)destinations service:(id)service
{
  payloadCopy = payload;
  destinationsCopy = destinations;
  serviceCopy = service;
  v17.receiver = self;
  v17.super_class = STSendPayloadWithIDSTransportOperation;
  v12 = [(STOperation *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_service, service);
    objc_storeStrong(&v13->_payload, payload);
    v14 = [destinationsCopy copy];
    destinations = v13->_destinations;
    v13->_destinations = v14;
  }

  return v13;
}

- (void)main
{
  v3 = _os_activity_create(&_mh_execute_header, "STSendPayloadWithIDSTransportOperation start", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  [(STOperation *)self setActivity:v3];

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  activity = [(STOperation *)self activity];
  os_activity_scope_enter(activity, &state);

  v5 = +[STLog familyMessaging];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    payloadType = [(STUnifiedTransportPayload *)self->_payload payloadType];
    *buf = 136446466;
    v37 = "[STSendPayloadWithIDSTransportOperation main]";
    v38 = 2112;
    v39 = payloadType;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \nStarted \npayloadType: %@", buf, 0x16u);
  }

  payload = [(STSendPayloadWithIDSTransportOperation *)self payload];
  v34 = 0;
  v8 = [NSKeyedArchiver archivedDataWithRootObject:payload requiringSecureCoding:1 error:&v34];
  v9 = v34;

  if (v8)
  {
    payload2 = [(STSendPayloadWithIDSTransportOperation *)self payload];
    payloadType2 = [payload2 payloadType];

    v13 = ![payloadType2 isEqualToString:@"RMUnifiedTransportPayloadTypeUsageRequest"] && (objc_msgSend(payloadType2, "isEqualToString:", @"RMUnifiedTransportPayloadTypeUsageResponse") & 1) == 0 && (objc_msgSend(payloadType2, "isEqualToString:", @"RMUnifiedTransportPayloadTypeCheckinRequest") & 1) == 0 && !objc_msgSend(payloadType2, "isEqualToString:", @"RMUnifiedTransportPayloadTypeCheckinResponse");
    if (([payloadType2 isEqualToString:@"RMUnifiedTransportPayloadTypeCheckinRequest"] & 1) != 0 || (objc_msgSend(payloadType2, "isEqualToString:", @"RMUnifiedTransportPayloadTypeCheckinResponse") & 1) != 0 || (objc_msgSend(payloadType2, "isEqualToString:", @"RMUnifiedTransportPayloadTypeBlueprints") & 1) != 0 || (objc_msgSend(payloadType2, "isEqualToString:", @"RMUnifiedTransportPayloadTypeUsageRequest") & 1) != 0 || (objc_msgSend(payloadType2, "isEqualToString:", @"RMUnifiedTransportPayloadTypeUsageResponse") & 1) != 0 || objc_msgSend(payloadType2, "isEqualToString:", @"RMUnifiedTransportPayloadTypeFamilySettings"))
    {
      v14 = payloadType2;
    }

    else
    {
      v14 = 0;
    }

    destinations = [(STSendPayloadWithIDSTransportOperation *)self destinations];
    payload3 = [(STSendPayloadWithIDSTransportOperation *)self payload];
    uUID = [payload3 UUID];
    v33 = v9;
    v18 = [(STSendPayloadWithIDSTransportOperation *)self _sendData:v8 toDestinations:destinations queueIdentifier:v14 payloadUUID:uUID expectResponse:v13 withError:&v33];
    v19 = v33;

    if (v18)
    {
      v20 = +[STLog familyMessaging];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        payload4 = [(STSendPayloadWithIDSTransportOperation *)self payload];
        *buf = 136446722;
        v37 = "[STSendPayloadWithIDSTransportOperation main]";
        v38 = 2114;
        v39 = v18;
        v40 = 2114;
        v41 = payload4;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[v1] %{public}s: \nSent payload: \nExternalUUID: %{public}@, \npayload: %{public}@", buf, 0x20u);
      }

      [(STSendPayloadWithIDSTransportOperation *)self endOperationWithResultObject:0];
      v22 = +[STLog familyMessaging];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        payloadType3 = [(STUnifiedTransportPayload *)self->_payload payloadType];
        *buf = 136446466;
        v37 = "[STSendPayloadWithIDSTransportOperation main]";
        v38 = 2112;
        v39 = payloadType3;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \nFinished \npayloadType: %@", buf, 0x16u);
      }
    }

    else
    {
      v24 = +[STLog idsTransport];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        payload5 = [(STSendPayloadWithIDSTransportOperation *)self payload];
        uUID2 = [payload5 UUID];
        payload6 = [(STSendPayloadWithIDSTransportOperation *)self payload];
        payloadDictionary = [payload6 payloadDictionary];
        payload7 = [(STSendPayloadWithIDSTransportOperation *)self payload];
        userInfo = [payload7 userInfo];
        *buf = 136447235;
        v37 = "[STSendPayloadWithIDSTransportOperation main]";
        v38 = 2114;
        v39 = uUID2;
        v40 = 2113;
        v41 = payloadDictionary;
        v42 = 2113;
        v43 = userInfo;
        v44 = 2114;
        v45 = v19;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[v1] %{public}s: \nFailed to send payload \nLocalUUID: %{public}@, \npayloadDictionary:%{private}@, \nuserInfo:%{private}@, \nerror:%{public}@", buf, 0x34u);
      }

      [(STSendPayloadWithIDSTransportOperation *)self endOperationWithError:v19];
    }

    v9 = v19;
  }

  else
  {
    v12 = +[STLog idsTransport];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      payload8 = [(STSendPayloadWithIDSTransportOperation *)self payload];
      payloadType4 = [payload8 payloadType];
      *buf = 136446722;
      v37 = "[STSendPayloadWithIDSTransportOperation main]";
      v38 = 2114;
      v39 = payloadType4;
      v40 = 2114;
      v41 = v9;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[v1] %{public}s: \nFailed to generate payload data for payloadType: %{public}@, error %{public}@", buf, 0x20u);
    }

    [(STSendPayloadWithIDSTransportOperation *)self endOperationWithError:v9];
  }

  os_activity_scope_leave(&state);
}

@end