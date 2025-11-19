void sub_100000880(void *a1)
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100000914;
  handler[3] = &unk_100004128;
  v3 = a1;
  v1 = v3;
  xpc_connection_set_event_handler(v1, handler);
  xpc_connection_activate(v1);
}

void sub_100000914(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  if (xpc_get_type(v5) != &_xpc_type_error)
  {
    v6 = _CFXPCCreateCFObjectFromXPCMessage();
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = +[NSMutableDictionary dictionary];
      v8 = [v6 objectForKeyedSubscript:@"PayloadDecodingOptions"];
      if (v8)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 addEntriesFromDictionary:v8];
        }
      }

      [v7 setObject:kCFBooleanTrue forKeyedSubscript:MRCDescriptorPayloadDecodingOptionShouldForceInProcessDecoding];
      v9 = [v6 objectForKeyedSubscript:@"DescriptorAttributes"];
      if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v10 = MRCDescriptorCreateWithAttributes()) != 0)
      {
        v11 = v10;
        v12 = MRCDescriptorDecodePayloadAndSupplementalPayloadWithOptions();
        CFRelease(v11);
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        v14 = _CFXPCCreateXPCObjectFromCFObject();
      }

      else
      {
        v14 = 0;
      }

      reply = xpc_dictionary_create_reply(v5);
      v13 = reply;
      if (v14)
      {
        xpc_dictionary_set_value(reply, "DecodedStringValue", v14);
      }
    }

    else
    {
      NSLog(@"Invalid input!");
      v13 = xpc_dictionary_create_reply(v5);
      v14 = 0;
      v12 = 0;
    }

    xpc_connection_send_message(v4, v13);
  }
}