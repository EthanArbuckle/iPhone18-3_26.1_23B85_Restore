@interface STSendPayloadWithIDSTransportOperation
- (STSendPayloadWithIDSTransportOperation)initWithPayload:(id)a3 destinations:(id)a4 service:(id)a5;
- (void)main;
@end

@implementation STSendPayloadWithIDSTransportOperation

- (STSendPayloadWithIDSTransportOperation)initWithPayload:(id)a3 destinations:(id)a4 service:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = STSendPayloadWithIDSTransportOperation;
  v12 = [(STOperation *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_service, a5);
    objc_storeStrong(&v13->_payload, a3);
    v14 = [v10 copy];
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
  v4 = [(STOperation *)self activity];
  os_activity_scope_enter(v4, &state);

  v5 = +[STLog familyMessaging];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(STUnifiedTransportPayload *)self->_payload payloadType];
    *buf = 136446466;
    v37 = "[STSendPayloadWithIDSTransportOperation main]";
    v38 = 2112;
    v39 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \nStarted \npayloadType: %@", buf, 0x16u);
  }

  v7 = [(STSendPayloadWithIDSTransportOperation *)self payload];
  v34 = 0;
  v8 = [NSKeyedArchiver archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v34];
  v9 = v34;

  if (v8)
  {
    v10 = [(STSendPayloadWithIDSTransportOperation *)self payload];
    v11 = [v10 payloadType];

    v13 = ![v11 isEqualToString:@"RMUnifiedTransportPayloadTypeUsageRequest"] && (objc_msgSend(v11, "isEqualToString:", @"RMUnifiedTransportPayloadTypeUsageResponse") & 1) == 0 && (objc_msgSend(v11, "isEqualToString:", @"RMUnifiedTransportPayloadTypeCheckinRequest") & 1) == 0 && !objc_msgSend(v11, "isEqualToString:", @"RMUnifiedTransportPayloadTypeCheckinResponse");
    if (([v11 isEqualToString:@"RMUnifiedTransportPayloadTypeCheckinRequest"] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"RMUnifiedTransportPayloadTypeCheckinResponse") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"RMUnifiedTransportPayloadTypeBlueprints") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"RMUnifiedTransportPayloadTypeUsageRequest") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"RMUnifiedTransportPayloadTypeUsageResponse") & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"RMUnifiedTransportPayloadTypeFamilySettings"))
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v15 = [(STSendPayloadWithIDSTransportOperation *)self destinations];
    v16 = [(STSendPayloadWithIDSTransportOperation *)self payload];
    v17 = [v16 UUID];
    v33 = v9;
    v18 = [(STSendPayloadWithIDSTransportOperation *)self _sendData:v8 toDestinations:v15 queueIdentifier:v14 payloadUUID:v17 expectResponse:v13 withError:&v33];
    v19 = v33;

    if (v18)
    {
      v20 = +[STLog familyMessaging];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [(STSendPayloadWithIDSTransportOperation *)self payload];
        *buf = 136446722;
        v37 = "[STSendPayloadWithIDSTransportOperation main]";
        v38 = 2114;
        v39 = v18;
        v40 = 2114;
        v41 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[v1] %{public}s: \nSent payload: \nExternalUUID: %{public}@, \npayload: %{public}@", buf, 0x20u);
      }

      [(STSendPayloadWithIDSTransportOperation *)self endOperationWithResultObject:0];
      v22 = +[STLog familyMessaging];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [(STUnifiedTransportPayload *)self->_payload payloadType];
        *buf = 136446466;
        v37 = "[STSendPayloadWithIDSTransportOperation main]";
        v38 = 2112;
        v39 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \nFinished \npayloadType: %@", buf, 0x16u);
      }
    }

    else
    {
      v24 = +[STLog idsTransport];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v32 = [(STSendPayloadWithIDSTransportOperation *)self payload];
        v30 = [v32 UUID];
        v31 = [(STSendPayloadWithIDSTransportOperation *)self payload];
        v27 = [v31 payloadDictionary];
        v28 = [(STSendPayloadWithIDSTransportOperation *)self payload];
        v29 = [v28 userInfo];
        *buf = 136447235;
        v37 = "[STSendPayloadWithIDSTransportOperation main]";
        v38 = 2114;
        v39 = v30;
        v40 = 2113;
        v41 = v27;
        v42 = 2113;
        v43 = v29;
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
      v25 = [(STSendPayloadWithIDSTransportOperation *)self payload];
      v26 = [v25 payloadType];
      *buf = 136446722;
      v37 = "[STSendPayloadWithIDSTransportOperation main]";
      v38 = 2114;
      v39 = v26;
      v40 = 2114;
      v41 = v9;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[v1] %{public}s: \nFailed to generate payload data for payloadType: %{public}@, error %{public}@", buf, 0x20u);
    }

    [(STSendPayloadWithIDSTransportOperation *)self endOperationWithError:v9];
  }

  os_activity_scope_leave(&state);
}

@end