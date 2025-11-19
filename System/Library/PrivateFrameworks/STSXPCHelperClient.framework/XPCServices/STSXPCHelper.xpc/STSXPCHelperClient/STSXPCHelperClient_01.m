NSObject *sub_100025ECC(uint64_t a1)
{
  v2 = objc_retainBlock(_nw_parameters_configure_protocol_disable);
  secure_tcp = nw_parameters_create_secure_tcp(v2, _nw_parameters_configure_protocol_default_configuration);
  nw_parameters_set_include_peer_to_peer(secure_tcp, 1);
  nw_parameters_set_service_class(secure_tcp, nw_service_class_responsive_data);
  v4 = nw_parameters_copy_default_protocol_stack(secure_tcp);
  v5 = nw_protocol_stack_copy_transport_protocol(v4);
  nw_tcp_options_set_enable_keepalive(v5, 1);
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 72);
  }

  else
  {
    v7 = 0;
  }

  nw_tcp_options_set_connection_timeout(v5, v7);

  return secure_tcp;
}

void sub_100025F84(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    error_code = nw_error_get_error_code(v5);
  }

  else
  {
    error_code = 0;
  }

  *__error() = error_code;
  v10 = *(a1 + 32);
  if (v10)
  {
    WeakRetained = objc_loadWeakRetained((v10 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  if (a2 > 3)
  {
    if (a2 == 4)
    {
      v25 = sub_100024AE0();
      if (os_signpost_enabled(v25))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NetworkSocket_ConnectionFailed", &unk_10005485E, buf, 2u);
      }

      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSWifiHandoverSession _start_connection:]_block_invoke", 296, *(a1 + 32), @"connection failed", v26, v27, v28[0]);
      nw_connection_cancel(*(a1 + 40));
    }

    else if (a2 == 5)
    {
      v19 = sub_100024AE0();
      if (os_signpost_enabled(v19))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NetworkSocket_ConnectionCancelled", &unk_10005485E, buf, 2u);
      }

      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSWifiHandoverSession _start_connection:]_block_invoke", 324, *(a1 + 32), @"connection cancelled", v20, v21, v28[0]);
      v22 = *(a1 + 32);
      if (!v22 || (*(v22 + 8) & 1) == 0)
      {
        sub_100014234(v22, 0);
        if (objc_opt_respondsToSelector())
        {
          v23 = *(a1 + 32);
          if (v23)
          {
            v16 = *(v23 + 48);
          }

          else
          {
            v16 = 0;
          }

          v28[0] = _NSConcreteStackBlock;
          v28[1] = 3221225472;
          v28[2] = sub_1000262E4;
          v28[3] = &unk_100058CB0;
          v24 = *(a1 + 48);
          v28[4] = WeakRetained;
          v28[5] = v24;
          v18 = v28;
          goto LABEL_25;
        }
      }
    }
  }

  else
  {
    if (a2 == 1)
    {
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSWifiHandoverSession _start_connection:]_block_invoke", 287, *(a1 + 32), @"connection waiting", v8, v9, v28[0]);
      goto LABEL_30;
    }

    if (a2 == 3)
    {
      v12 = sub_100024AE0();
      if (os_signpost_enabled(v12))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NetworkSocket_ConnectionReady", &unk_10005485E, buf, 2u);
      }

      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSWifiHandoverSession _start_connection:]_block_invoke", 307, *(a1 + 32), @"connection ready", v13, v14, v28[0]);
      if (objc_opt_respondsToSelector())
      {
        v15 = *(a1 + 32);
        if (v15)
        {
          v16 = *(v15 + 48);
        }

        else
        {
          v16 = 0;
        }

        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_1000262D8;
        v29[3] = &unk_100058CB0;
        v17 = *(a1 + 48);
        v29[4] = WeakRetained;
        v29[5] = v17;
        v18 = v29;
LABEL_25:
        dispatch_async(v16, v18);
      }
    }
  }

LABEL_30:
}

void sub_1000262F0(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    error_code = nw_error_get_error_code(v5);
  }

  else
  {
    error_code = 0;
  }

  *__error() = error_code;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v34 = *(a1 + 32);
      v35 = __error();
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSWifiHandoverSession _create_and_start_listener:]_block_invoke", 380, v34, @"listener failed, errno=%d", v36, v37, *v35);
      v38 = *(a1 + 32);
      if (v38)
      {
        v39 = *(v38 + 64);
        if (v39)
        {
          nw_listener_cancel(v39);
        }
      }
    }

    else if (a2 == 4)
    {
      v23 = *(a1 + 32);
      v24 = __error();
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSWifiHandoverSession _create_and_start_listener:]_block_invoke", 411, v23, @"listener cancelled, errno=%d", v25, v26, *v24);
      v27 = *(a1 + 32);
      if (v27)
      {
        objc_storeStrong((v27 + 64), 0);
      }

      v28 = sub_100024AE0();
      if (os_signpost_enabled(v28))
      {
        LOWORD(block[0]) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NetworkSocket_ConnectionListenerCancelled", &unk_10005485E, block, 2u);
      }

      v29 = *(a1 + 32);
      if (v29)
      {
        WeakRetained = objc_loadWeakRetained((v29 + 16));
      }

      else
      {
        WeakRetained = 0;
      }

      v31 = objc_opt_respondsToSelector();

      if (v31)
      {
        v32 = *(a1 + 32);
        if (v32)
        {
          v33 = *(v32 + 48);
        }

        else
        {
          v33 = 0;
        }

        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_100026794;
        v42[3] = &unk_100058A08;
        v42[4] = v32;
        dispatch_async(v33, v42);
      }
    }
  }

  else if (a2 == 1)
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSWifiHandoverSession _create_and_start_listener:]_block_invoke", 371, *(a1 + 32), @"listener waiting", v8, v9, v41);
  }

  else if (a2 == 2)
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(v10 + 64);
    }

    else
    {
      v11 = 0;
    }

    port = nw_listener_get_port(v11);
    v15 = *(a1 + 32);
    if (v15)
    {
      v16 = v15[8];
    }

    else
    {
      v16 = 0;
    }

    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSWifiHandoverSession _create_and_start_listener:]_block_invoke", 389, v15, @"listener ready, listener=%@, activePort=%d", v12, v13, v16);
    v17 = *(a1 + 32);
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1000266C4;
    v43[3] = &unk_1000592D8;
    v43[4] = v17;
    v44 = port;
    v20 = v43;
    if (v17)
    {
      if (*(v17 + 24))
      {
        sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSWifiHandoverSession _startWifiAwarePublisherWithPort:completion:]", 194, v17, @"Unsupported type=%lu", v18, v19, *(v17 + 24));
        v21 = *(v17 + 48);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100025DE4;
        block[3] = &unk_100059288;
        v46 = v20;
        dispatch_async(v21, block);
        v22 = v46;
      }

      else
      {
        v22 = *(v17 + 32);
        v40 = [NSNumber numberWithUnsignedShort:port];
        sub_100002BE4(v22, v40);

        sub_100014244(*(v17 + 40), v22, v20);
      }
    }
  }
}

void sub_1000266C4(uint64_t a1, void *a2)
{
  v9 = a2;
  if (v9)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSWifiHandoverSession _create_and_start_listener:]_block_invoke_2", 394, *(a1 + 32), @"error=%@, cancel listener", v3, v4, v9);
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 64);
    }

    else
    {
      v6 = 0;
    }

    nw_listener_cancel(v6);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained((v7 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [WeakRetained publisherStarted:*(a1 + 40) error:v9];
  }
}

void sub_100026794(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 16));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  v11 = NSLocalizedDescriptionKey;
  v12 = STSWifiErrorDescriptions;
  v5 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v6 = [NSError errorWithDomain:@"WifiDomain" code:0 userInfo:v5];

  v9[0] = NSLocalizedDescriptionKey;
  v9[1] = NSUnderlyingErrorKey;
  v10[0] = @"Wifi specific error";
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  v8 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:12 userInfo:v7];

  [WeakRetained sessionDidInvalidate:v4 error:v8];
}

void sub_100026914(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7 = a2;
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSWifiHandoverSession _create_and_start_listener:]_block_invoke_2", 428, v3, @"Accepting new connection", v4, v5, v6);
  sub_100024D84(*(a1 + 32), v7);
}

void sub_10002698C(void *a1, nw_error_t error)
{
  if (error)
  {
    v3 = a1[7];
    v8 = [NSError errorWithDomain:@"Network" code:nw_error_get_error_code(error) userInfo:0];
    (*(v3 + 16))(v3, v8);
  }

  else
  {
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];
    v7 = a1[4];

    sub_100025828(v7, v4, v5, v6);
  }
}

void sub_100026A2C(uint64_t a1, nw_error_t error)
{
  if (error)
  {
    error = [NSError errorWithDomain:@"Network" code:nw_error_get_error_code(error) userInfo:0];
  }

  v3 = error;
  (*(*(a1 + 32) + 16))();
}

void sub_100026AB0(void *a1, void *a2, void *a3, int a4, void *a5)
{
  data2 = a2;
  v9 = a3;
  v10 = a5;
  v11 = a1[4];
  if (data2)
  {
    concat = dispatch_data_create_concat(v11, data2);
  }

  else
  {
    concat = v11;
  }

  v13 = concat;
  if (v9)
  {
    is_final = nw_content_context_get_is_final(v9);
  }

  else
  {
    is_final = 0;
  }

  v15 = a1[5];
  if (data2)
  {
    size = dispatch_data_get_size(data2);
  }

  else
  {
    size = 0;
  }

  dispatch_data_get_size(v13);
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSWifiHandoverSession _receiveFromConnection:dispatchData:length:completionHandler:]_block_invoke", 487, v15, @"Recv %lu, total recv=%lu, error=%@, isCompleted=%d, context=%@, finalContext=%d", v17, v18, size);
  if ((a4 & is_final) == 1)
  {
    (*(a1[6] + 16))();
  }

  else
  {
    if (v10)
    {
      v19 = [NSError errorWithDomain:@"NetworkController" code:nw_error_get_error_code(v10) userInfo:0];
    }

    else
    {
      v19 = 0;
    }

    (*(a1[6] + 16))();
  }
}

id sub_100026CD8(id a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = STSXPCHelper;
    a1 = objc_msgSendSuper2(&v12, "init");
    if (a1)
    {
      if (v5)
      {
        v7 = v5;
        v8 = *(a1 + 8);
        *(a1 + 8) = v7;
      }

      else
      {
        v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v9 = dispatch_queue_create("com.apple.STSXPCHelper.main", v8);
        v10 = *(a1 + 8);
        *(a1 + 8) = v9;
      }

      *(a1 + 9) = 0;
      objc_storeWeak(a1 + 18, v6);
      *(a1 + 4) = 0;
      *(a1 + 13) = MGGetBoolAnswer();
    }
  }

  return a1;
}

void sub_100027558(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 104), a2);
  }
}

void sub_100027830(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSXPCHelper processUnifiedAccessStepupSessionEstablishment:forAcwg:endpointIdentifier:intermediateKeyMaterial:callback:]_block_invoke", 184, *(a1 + 32), @"Processing error: %@", v4, v5, v3);
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 56);
  }

  else
  {
    v7 = 0;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100027928;
  v11[3] = &unk_1000593C8;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v12 = v3;
  v13 = v9;
  v14 = v8;
  v10 = v3;
  sub_100005A40(v7, 20, v11);
}

void sub_100027928(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];
  if (v3)
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  v5 = a1[4];

  sub_10000BB48(v4, 0, v5);
}

void sub_100027988(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if ((!v9 || [v9 code] == 17) && objc_msgSend(v7, "count"))
  {
    v11 = *(a1 + 32);
    v12 = [v7 firstObject];
    v13 = v12;
    if (v11)
    {
      v14 = v12;
      v15 = objc_alloc_init(NSMutableDictionary);
      if (v14)
      {
        v16 = v14[3];
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v30 = sub_10002EBA8;
      v31 = &unk_1000589C0;
      v32 = v15;
      v18 = v15;
      [v17 enumerateKeysAndObjectsUsingBlock:&buf];

      v19 = [STSCredentialSelect alloc];
      if (v14)
      {
        v20 = v14[2];
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;

      v11 = sub_10002363C(&v19->super.isa, v21, v18, 0);
    }

    v22 = sub_100024AE0();
    if (os_signpost_enabled(v22))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ISO18013_ProcessMDocRequest", &unk_10005485E, &buf, 2u);
    }

    v23 = *(a1 + 32);
    if (v23)
    {
      v24 = *(v23 + 56);
    }

    else
    {
      v24 = 0;
    }

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100027CB0;
    v26[3] = &unk_1000593F0;
    v27 = *(a1 + 40);
    v28 = *(a1 + 48);
    sub_100005768(v24, v11, v26);
  }

  else
  {
    v25 = sub_100024AE0();
    if (os_signpost_enabled(v25))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ISO18013_ProcessMDocRequest", "Failed, Error=%@", &buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_100027CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

void sub_100027E80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_100024AE0();
    if (os_signpost_enabled(v5))
    {
      v7 = 138412290;
      v8 = v4;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ISO18013_ProcessMDocRequest", "Failed, Error=%@", &v7, 0xCu);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

id sub_100028A90(uint64_t a1, void *a2)
{
  v6 = a2;
  if (!a1)
  {
    v13 = 0;
    goto LABEL_24;
  }

  v7 = *(a1 + 136);
  if (!v7)
  {
    sub_10002483C(OS_LOG_TYPE_INFO, 1, "[STSXPCHelper _connectToSelectedACWithTimestamp:]", 1542, a1, @"Missing selected AC", v4, v5, v27);
    v30[0] = NSLocalizedDescriptionKey;
    v31[0] = off_100069A50;
    v12 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:1];
    v13 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:2 userInfo:v12];

    goto LABEL_24;
  }

  if ([v7 type] == 1)
  {
    v8 = sub_10002A820(a1, *(a1 + 136), 1);
    v9 = *(a1 + 96);
    if (v9)
    {
LABEL_5:
      v9 = v9[4];
    }

LABEL_6:
    v10 = v9;
    v11 = v10;
    if (!v8 && v10)
    {
      sub_100029B10(a1, v10);
      v8 = 0;
    }

    goto LABEL_16;
  }

  if ([*(a1 + 136) type] == 2)
  {
    v14 = *(a1 + 136);
    v15 = *(a1 + 80);
    v16 = v14;
    if (v15)
    {
      v17 = v15[8];
    }

    else
    {
      v17 = 0;
    }

    v8 = sub_10002967C(a1, v16, v17 & 1);

    v9 = *(a1 + 88);
    if (v9)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  v8 = 0;
  v11 = 0;
LABEL_16:
  v13 = v8;
  v18 = v6;
  v31[0] = v18;
  v30[0] = @"processHandoverEventTime";
  v30[1] = @"transportSelected";
  v19 = *(a1 + 136);
  if (v19)
  {
    v2 = *(a1 + 136);
    v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v2 type]);
  }

  else
  {
    v20 = &off_10005F670;
  }

  v31[1] = v20;
  v30[2] = @"errorCode";
  v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v13 code]);
  v31[2] = v21;
  v22 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:3];

  if (v19)
  {
  }

  v23 = +[STSAnalyticsLogger sharedCALogger];
  [v23 postISOHandoverEvent:v22 prepOnly:1];

  if (v13)
  {
    v28 = @"handoverEndEventTime";
    v29 = v18;
    v24 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v25 = +[STSAnalyticsLogger sharedCALogger];
    [v25 postISOHandoverEvent:v24 prepOnly:0];
  }

LABEL_24:

  return v13;
}

id sub_10002967C(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = [v5 leRole];
    if (a3)
    {
      if ((v7 - 1) < 3)
      {
        v8 = @"ReaderPeripheral";
        v9 = 1;
        goto LABEL_16;
      }

      if (v7 != 4)
      {
        v10 = @"ReaderCentral";
        v11 = v7 == 0;
        v9 = 0;
LABEL_13:
        if (v11)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }

LABEL_16:
        v12 = sub_10000E574([STSBluetoothSession alloc], a1, v9, a1, 0);
        v13 = *(a1 + 88);
        *(a1 + 88) = v12;

        v14 = *(a1 + 80);
        if (v14)
        {
          v15 = *(v14 + 16) & 8;
        }

        else
        {
          v15 = 0;
        }

        v16 = *(a1 + 32);
        v17 = *(a1 + 88);
        if (v16)
        {
          objc_storeWeak((v16 + 16), v17);
        }

        objc_storeWeak((a1 + 152), *(a1 + 88));
        v18 = *(a1 + 80);
        v39 = 0;
        v19 = v18;
        v20 = sub_10003AA34(v19, &v39);
        v21 = v39;

        if (v21)
        {
          v49[0] = NSLocalizedDescriptionKey;
          v49[1] = NSUnderlyingErrorKey;
          v50[0] = @"Reader Ident calculation error";
          v50[1] = v21;
          v22 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];
          a1 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:6 userInfo:v22];
        }

        else
        {
          v37 = v20;
          v38 = v8;
          v47 = @"credentialType";
          v23 = [NSNumber numberWithUnsignedChar:*(a1 + 8)];
          v48 = v23;
          v22 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];

          v24 = +[STSAnalyticsLogger sharedCALogger];
          [v24 postISOTransactionEvent:v22 prepOnly:1];

          v25 = sub_100024AE0();
          if (os_signpost_enabled(v25))
          {
            v26 = [v6 advertiseUUID];
            v27 = [v6 leAddr];
            *buf = 138413058;
            v28 = v38;
            *&buf[4] = v38;
            v41 = 1024;
            v42 = v15 >> 3;
            v43 = 2112;
            v44 = v26;
            v45 = 2112;
            v46 = v27;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "StartBleSession", "%@,l2Cap=%d,selected advertiseUUID=%@,selected leAddr=%@", buf, 0x26u);
          }

          else
          {
            v28 = v38;
          }

          v29 = [v6 advertiseUUID];
          v36 = [v6 leAddr];
          sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSXPCHelper _startBleSession:isoReader:]", 1194, a1, @"Starting %@,l2Cap=%d,selected advertiseUUID=%@,selected leAddr=%@", v30, v31, v28);

          v32 = *(a1 + 88);
          v33 = [v6 humanReadableAdvertiseUUID];
          v34 = [v6 humanReadableLEAddress];
          v20 = v37;
          a1 = sub_10000E6A4(v32, v33, v34, v15 != 0, v37);
        }

        goto LABEL_28;
      }
    }

    else
    {
      if ((v7 - 1) < 3)
      {
        v8 = @"DeviceCentral";
        v9 = 2;
        goto LABEL_16;
      }

      if (v7 != 4)
      {
        v10 = @"DevicePeripheral";
        v11 = v7 == 0;
        if (v7)
        {
          v9 = 0;
        }

        else
        {
          v9 = 3;
        }

        goto LABEL_13;
      }
    }

    v51 = NSLocalizedDescriptionKey;
    *buf = off_100069A50;
    v21 = [NSDictionary dictionaryWithObjects:buf forKeys:&v51 count:1];
    a1 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:2 userInfo:v21];
LABEL_28:
  }

  return a1;
}

void sub_100029B10(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSXPCHelper startConnectionEstablishmentTimer:]", 1476, a1, &stru_100059C08, v4, v5, v10);
    v6 = [STSTimer alloc];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10002ED00;
    v11[3] = &unk_1000595D0;
    v11[4] = a1;
    objc_copyWeak(&v12, &location);
    v7 = [(STSTimer *)v6 initWithCallback:v11 queue:v3];
    v8 = a1[15];
    a1[15] = v7;

    v9 = a1[15];
    [v9 startTimer:30.0];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void sub_100029C28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10002A5B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v18 = v3;
  if (!v3)
  {
    v13 = *(a1 + 32);
    v14 = 0;
LABEL_8:
    sub_10000B784(v13, v14);
LABEL_19:
    v6 = v18;
    goto LABEL_20;
  }

  v4 = [v3 domain];
  v5 = [v4 isEqual:@"STSXPCHelperErrorDomain"];

  v6 = v18;
  if (!v5)
  {
    goto LABEL_20;
  }

  if ([v18 code] == 12)
  {
    v7 = [v18 userInfo];
    v8 = [v7 objectForKeyedSubscript:NSUnderlyingErrorKey];

    v9 = [v8 domain];
    if ([v9 isEqualToString:@"WifiDomain"])
    {
      v10 = [v8 code];

      if (v10 == 3)
      {
        v11 = *(a1 + 32);
        v12 = 2;
        goto LABEL_16;
      }
    }

    else
    {
    }

    v16 = [v8 domain];
    if (![v16 isEqualToString:@"BluetoothDomain"])
    {

      goto LABEL_18;
    }

    v17 = [v8 code];

    if (v17)
    {
LABEL_18:

      goto LABEL_19;
    }

    v11 = *(a1 + 32);
    v12 = 3;
LABEL_16:
    sub_10000B784(v11, v12);
    goto LABEL_18;
  }

  v15 = [v18 code] == 6;
  v6 = v18;
  if (v15)
  {
    v13 = *(a1 + 32);
    v14 = 1;
    goto LABEL_8;
  }

LABEL_20:
}

STSReaderCryptarch *sub_10002A734(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v2 = v2[4];
  }

  v3 = v2;
  v4 = [v3 curve];

  v5 = *(a1 + 56);
  if (v5)
  {
    v5 = v5[4];
  }

  v6 = v5;
  v7 = [v6 variant];

  v8 = [STSReaderCryptarch alloc];
  v9 = *(a1 + 56);
  if (v9)
  {
    v9 = v9[4];
  }

  if (v4 >= 5)
  {
    v10 = 5;
  }

  else
  {
    v10 = v4;
  }

  v11 = (v7 - 1) < 2;
  v12 = v9;
  v13 = [v12 privateKey];
  v14 = [(STSReaderCryptarch *)v8 initWithCurve:v10 variant:v11 privateKey:v13];

  return v14;
}

id sub_10002A820(uint64_t a1, void *a2, BOOL a3)
{
  v5 = a2;
  v6 = *(a1 + 80);
  if (v6 && v6[11] == 1)
  {
    v33 = 0;
    v7 = v6;
    v8 = sub_10003AB90(v7, &v33);
    v9 = v33;

    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v11 = sub_100024AE0();
      if (os_signpost_enabled(v11))
      {
        v12 = [v5 securityInfo];
        *buf = 138412546;
        *&buf[4] = v8;
        v35 = 2112;
        v36 = v12;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "StartWiFiSession", "serviceName=%@, securityInfo=%@", buf, 0x16u);
      }

      v32 = [v5 securityInfo];
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSXPCHelper _startWifiSession:publisherRole:]", 1110, a1, @"Starting Wifi: serviceName=%@, securityInfo=%@", v13, v14, v8);

      v15 = objc_alloc_init(STSWifiAwareConfigurationParams);
      v16 = [v5 securityInfo];
      sub_100002540(v15, v16);

      v17 = [v5 discoveryChannelInfo];
      sub_100002550(v15, v17);

      v18 = sub_1000025D4(STSWifiAwareConfiguration, v8, a3, v15);
      v19 = v18;
      if (v18)
      {
        *(v18 + 72) = xmmword_100042A20;
      }

      v20 = sub_100021234([STSWifiSession alloc], a1, v18, a1, 0);
      v21 = *(a1 + 96);
      *(a1 + 96) = v20;

      v22 = *(a1 + 32);
      v23 = *(a1 + 96);
      if (v22)
      {
        objc_storeWeak((v22 + 16), v23);
      }

      objc_storeWeak((a1 + 152), *(a1 + 96));
      v10 = sub_1000213BC(*(a1 + 96), v24, v25, v26, v27, v28, v29, v30);
    }
  }

  else
  {
    v37 = NSLocalizedDescriptionKey;
    *buf = off_100069A70;
    v9 = [NSDictionary dictionaryWithObjects:buf forKeys:&v37 count:1];
    v10 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:6 userInfo:v9];
  }

  return v10;
}

void sub_10002BFD0(uint64_t a1)
{
  v2 = sub_100024AE0();
  if (os_signpost_enabled(v2))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReceivedDataFromAlternateCarrier", &unk_10005485E, &buf, 2u);
  }

  v5 = *(a1 + 32);
  if (!v5)
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

  v6 = *(v5 + 72);
  if (v6 == 1)
  {
    v9 = *(v5 + 32);
    if (v9 && (*(v9 + 8) & 1) != 0)
    {
      goto LABEL_12;
    }

    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = v13;
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSXPCHelper _iso18013ReaderProcessResponse:altCarrierStatus:]", 1362, v5, &stru_100059C08, v16, v17, v55);
    v18 = objc_opt_new();
    v19 = [v14 length];
    v20 = [NSNumber numberWithInteger:v19];
    [v18 setObject:v20 forKeyedSubscript:@"responseSize"];

    v21 = +[STSReaderAnalyticsLogger sharedCALogger];
    [v21 postReaderTransactionEvent:v18 prepOnly:1];

    if (v15)
    {
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSXPCHelper _iso18013ReaderProcessResponse:altCarrierStatus:]", 1370, v5, @"AC receive status=%@", v22, v23, v15);
    }

    if (!*(v5 + 56))
    {
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSXPCHelper _iso18013ReaderProcessResponse:altCarrierStatus:]", 1374, v5, @"Dropping message", v22, v23, v56);
LABEL_38:

LABEL_39:
      goto LABEL_40;
    }

    *&v63 = _NSConcreteStackBlock;
    *(&v63 + 1) = 3221225472;
    v64 = sub_10002E8E0;
    v65 = &unk_100059580;
    v66 = v5;
    v24 = objc_retainBlock(&v63);
    if (v15)
    {
      v25 = +[NSDate now];
      v26 = objc_opt_new();
      [v26 setObject:v25 forKeyedSubscript:@"transactionEndEventTime"];
      v27 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v15 code]);
      [v26 setObject:v27 forKeyedSubscript:@"errorCode"];

      v28 = +[STSReaderAnalyticsLogger sharedCALogger];
      [v28 postReaderTransactionEvent:v26 prepOnly:0];

      (*(v24 + 2))(v24, v14, 0, 0, v15);
LABEL_37:

      goto LABEL_38;
    }

    if ([*(v5 + 112) length])
    {
      if ([*(v5 + 112) length] <= 0x100000)
      {
        [*(v5 + 112) appendData:v14];
        v34 = 0;
        v35 = *(v5 + 112);
LABEL_28:
        v25 = v35;
        v36 = [CBOR decodeFromData:v25];
        if (v36)
        {
          v26 = v36;
          v39 = *(v5 + 112);
          *(v5 + 112) = 0;

          v40 = sub_100024AE0();
          if (os_signpost_enabled(v40))
          {
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v19;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ISO18013_ProcessMDocResponse", "responseSize = %lu", &buf, 0xCu);
          }

          v41 = *(v5 + 56);
          v42 = *(v5 + 80);
          v43 = v41;
          if (v42)
          {
            v44 = v42[4];
          }

          else
          {
            v44 = 0;
          }

          v45 = v44;
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v59 = sub_10002E9B8;
          v60 = &unk_1000595A8;
          v61 = v5;
          v62 = v24;
          sub_1000063BC(v43, v25, v45, &buf);
        }

        else
        {
          sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSXPCHelper _iso18013ReaderProcessResponse:altCarrierStatus:]", 1418, v5, @"Incomplete CBOR data, waiting for more", v37, v38, v56);
          if (v34)
          {
            [*(v5 + 112) appendData:v14];
          }

          v26 = 0;
        }

        goto LABEL_37;
      }

      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSXPCHelper _iso18013ReaderProcessResponse:altCarrierStatus:]", 1407, v5, @"Buffer size is full therefore dropping all previous data", v31, v32, v56);
      v33 = *(v5 + 112);
      [v33 replaceBytesInRange:0 withBytes:objc_msgSend(v33 length:{"length"), 0, 0}];
    }

    v34 = 1;
    v35 = v14;
    goto LABEL_28;
  }

  if (!v6)
  {
    v7 = *(v5 + 32);
    if (!v7 || (*(v7 + 8) & 1) == 0)
    {
      v8 = *(a1 + 40);
      if (v8)
      {
LABEL_9:
        sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSXPCHelper altCarrierReceived:status:]_block_invoke", 784, v5, @"Data received error=%@; dropping", v3, v4, v8);
        return;
      }

      if (*(v5 + 11) == 1)
      {
        v14 = *(a1 + 48);
LABEL_44:
        if (!*(v5 + 56))
        {
          sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSXPCHelper _iso18013DeviceProcessRequest:]", 1253, v5, @"Dropping message", v29, v30, v55);
          goto LABEL_40;
        }

        sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSXPCHelper _iso18013DeviceProcessRequest:]", 1257, v5, &stru_100059C08, v29, v30, v55);
        sub_100003BB0(*(v5 + 56), 0, v47, v48, v49, v50, v51, v52);
        v53 = sub_100024AE0();
        if (os_signpost_enabled(v53))
        {
          v54 = *(v5 + 72);
          LODWORD(v63) = 134217984;
          *(&v63 + 4) = v54;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v53, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ISO18013_ProcessMDocRequest", "type=%lul", &v63, 0xCu);
        }

        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v59 = sub_10002E3C0;
        v60 = &unk_100059530;
        v61 = v5;
        v15 = objc_retainBlock(&buf);
        sub_100003128(*(v5 + 56), v14, v15);
        goto LABEL_39;
      }

LABEL_42:
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSXPCHelper altCarrierReceived:status:]_block_invoke", 789, *(a1 + 32), @"Received SessionEstablishment", v3, v4, v55);
      v46 = *(a1 + 32);
      if (!v46)
      {
        v14 = *(a1 + 48);
        goto LABEL_40;
      }

      *(v46 + 11) = 1;
      v5 = *(a1 + 32);
      v14 = *(a1 + 48);
      if (!v5)
      {
LABEL_40:

        return;
      }

      goto LABEL_44;
    }
  }

LABEL_12:
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSXPCHelper altCarrierReceived:status:]_block_invoke", 798, *(a1 + 32), @"Process raw receive", v3, v4, v55);
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 32);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 48);
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_10002C768;
  v57[3] = &unk_100058A30;
  v57[4] = v10;
  sub_10000BDFC(v11, v12, 0, v57);
}

void sub_10002C768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSXPCHelper altCarrierReceived:status:]_block_invoke_2", 803, *(a1 + 32), @"error= %@", a7, a8, a2);
  }
}

void sub_10002C7B4(uint64_t a1, dispatch_block_t block, dispatch_qos_class_t qos_class)
{
  if (a1)
  {
    v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, qos_class, 0, block);
    dispatch_async(*(a1 + 64), v4);
  }
}

void sub_10002C88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSXPCHelper altCarrierConnectedWithStatus:]_block_invoke", 821, *(a1 + 32), @"status=%lu", a7, a8, *(a1 + 40));
  sub_10002CC54(*(a1 + 32), v9, v10, v11, v12, v13, v14, v15);
  v16 = *(a1 + 32);
  if (v16)
  {
    v17 = v16[4];
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a1 + 40);
  v19 = v17;
  v20 = sub_10002CCD0(v16, v18);
  sub_10000BC4C(v19, v20);

  if (*(a1 + 40))
  {
    return;
  }

  v57 = objc_opt_new();
  v21 = +[NSDate now];
  [v57 setObject:v21 forKeyedSubscript:@"altCarrierStartEventTime"];
  v22 = +[STSReaderAnalyticsLogger sharedCALogger];
  [v22 postReaderTransactionEvent:v57 prepOnly:1];

  v23 = *(a1 + 32);
  if (v23)
  {
    v23 = v23[8];
  }

  v24 = v23;
  v25 = *(a1 + 32);
  if (!v25)
  {
    WeakRetained = 0;
    v29 = 0;
LABEL_37:
    v31 = v29;
    goto LABEL_38;
  }

  v26 = *(v25 + 32);
  if (!v26)
  {
    WeakRetained = 0;
    goto LABEL_9;
  }

  WeakRetained = objc_loadWeakRetained((v26 + 16));
  v25 = *(a1 + 32);
  if (v25)
  {
LABEL_9:
    v28 = 0;
    v29 = *(v25 + 88);
    goto LABEL_10;
  }

  v29 = 0;
  v28 = 1;
LABEL_10:
  if (WeakRetained != v29)
  {
    goto LABEL_19;
  }

  if (v28)
  {
    goto LABEL_37;
  }

  v30 = *(v25 + 88);
  v31 = v29;
  if (v30)
  {
    v32 = *(v30 + 32);
    goto LABEL_14;
  }

LABEL_38:
  v32 = 0;
LABEL_14:
  v33 = v32;

  v25 = *(a1 + 32);
  if (!v33)
  {
    goto LABEL_19;
  }

  if (!v25)
  {
    v35 = 0;
    goto LABEL_42;
  }

  v34 = *(v25 + 88);
  v35 = v34;
  if (!v34)
  {
LABEL_42:
    v36 = 0;
    goto LABEL_18;
  }

  v36 = *(v34 + 4);
LABEL_18:
  v37 = v36;

  v25 = *(a1 + 32);
  v24 = v37;
LABEL_19:
  if (v25)
  {
    v38 = *(v25 + 96);
    if (WeakRetained != v38)
    {
      goto LABEL_28;
    }

    v39 = v38;
    if (WeakRetained)
    {
      v40 = v39;
      v41 = *(v39 + 4);
      goto LABEL_23;
    }
  }

  else if (WeakRetained)
  {
    goto LABEL_28;
  }

  v40 = 0;
  v41 = 0;
LABEL_23:
  v42 = v41;

  if (v42)
  {
    v43 = *(a1 + 32);
    if (v43)
    {
      v44 = *(v43 + 96);
      v45 = v44;
      if (v44)
      {
        v46 = *(v44 + 4);
LABEL_27:
        v47 = v46;

        v24 = v47;
        goto LABEL_28;
      }
    }

    else
    {
      v45 = 0;
    }

    v46 = 0;
    goto LABEL_27;
  }

LABEL_28:
  if (v24)
  {
    v48 = *(a1 + 32);
    v49 = v24;
    if (v48)
    {
      objc_initWeak(&location, v48);
      sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSXPCHelper startAltCarrierSessionTimer:]", 1500, v48, &stru_100059C08, v50, v51, v56);
      v52 = [STSTimer alloc];
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_10002ED98;
      v58[3] = &unk_1000595D0;
      v58[4] = v48;
      objc_copyWeak(&v59, &location);
      v53 = [(STSTimer *)v52 initWithCallback:v58 queue:v49];
      v54 = v48[16];
      v48[16] = v53;

      v55 = v48[16];
      [v55 startTimer:300.0];

      objc_destroyWeak(&v59);
      objc_destroyWeak(&location);
    }
  }
}

void sub_10002CC2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002CC54(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a1[15])
  {
    sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSXPCHelper invalidateConnectionEstablishmentTimer]", 1492, a1, &stru_100059C08, a7, a8, v10);
    [a1[15] stopTimer];
    v9 = a1[15];
    a1[15] = 0;
  }
}

uint64_t sub_10002CCD0(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a2;
  if (a2 <= 2)
  {
    if (a2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    if (a2 != 1)
    {
      return v3;
    }
  }

  else if (a2 != 3)
  {
    if (a2 == 4)
    {
      v5 = a1[4];
      if (v5)
      {
        WeakRetained = objc_loadWeakRetained((v5 + 16));
      }

      else
      {
        WeakRetained = 0;
      }

      if (WeakRetained == a1[11])
      {
        v2 = 6;
      }

      else if (WeakRetained == a1[12])
      {
        v2 = 5;
      }

      else
      {
        v2 = 4;
      }
    }

    else if (a2 == 5)
    {
      return 7;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void sub_10002CDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSXPCHelper altCarrierDisconnectedWithStatus:]_block_invoke", 855, *(a1 + 32), @"status=%lu", a7, a8, *(a1 + 40));
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = v9[4];
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 40);
  v12 = v10;
  v13 = sub_10002CCD0(v9, v11);
  sub_10000BD24(v12, v13);

  v21 = *(a1 + 32);

  sub_10002CE94(v21, v14, v15, v16, v17, v18, v19, v20);
}

void sub_10002CE94(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a1[16])
  {
    sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSXPCHelper invalidateAltCarrierSessionTimer]", 1516, a1, &stru_100059C08, a7, a8, v10);
    [a1[16] stopTimer];
    v9 = a1[16];
    a1[16] = 0;
  }
}

void sub_10002CFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSXPCHelper receivedCredentialSelection:callback:]_block_invoke", 875, *(a1 + 32), &stru_100059C08, a7, a8, v15);
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 56);
  }

  else
  {
    v10 = 0;
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002D0BC;
  v16[3] = &unk_1000594B8;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v18 = v12;
  v16[4] = v13;
  v17 = v14;
  sub_100005768(v10, v11, v16);
}

void sub_10002D0BC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100024AE0();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ProcessCredentialSelection", &unk_10005485E, buf, 2u);
  }

  (*(a1[6] + 16))();
  v8 = [v5 length];
  v9 = a1[4];
  if (v8)
  {
    if (v9)
    {
      v10 = v9[4];
      v11 = v10;
      if (v10)
      {
        WeakRetained = objc_loadWeakRetained(v10 + 2);
LABEL_7:
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_10002D2C8;
        v20[3] = &unk_100059468;
        v13 = a1[5];
        v20[4] = a1[4];
        v14 = v13;

        v21 = v14;
        [WeakRetained altCarrierSendData:v5 completion:v20];

        goto LABEL_15;
      }
    }

    else
    {
      v11 = 0;
    }

    WeakRetained = 0;
    goto LABEL_7;
  }

  if (v9)
  {
    v9 = v9[4];
  }

  v15 = a1[5];
  v16 = v9;
  if (v15)
  {
    v17 = *(v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  sub_10000BB48(v16, v18, v6);

  v19 = sub_100024AE0();
  if (os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ISO18013_AltCarrierProcessing", &unk_10005485E, buf, 2u);
  }

LABEL_15:
}

void sub_10002D2C8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = v3[4];
  }

  v4 = *(a1 + 40);
  v5 = v3;
  v6 = a2;
  if (v4)
  {
    v7 = *(v4 + 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  sub_10000BB48(v5, v8, v6);

  v9 = sub_100024AE0();
  if (os_signpost_enabled(v9))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ISO18013_AltCarrierProcessing", &unk_10005485E, v10, 2u);
  }
}

void sub_10002D58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSXPCHelper iso18013ReaderSendSessionEstablishment:callback:]_block_invoke", 930, *(a1 + 32), @"readerSend: %@", a7, a8, *(a1 + 40));
  v9 = *(a1 + 32);
  if (v9)
  {
    v9 = v9[7];
  }

  v10 = v9;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (v11)
  {
    v13 = *(v11 + 80);
    v14 = v13;
    if (v13)
    {
      v15 = *(v13 + 5);
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = 0;
LABEL_6:
  v16 = v15;
  v17 = *(a1 + 32);
  if (!v17)
  {
    v19 = 0;
    goto LABEL_13;
  }

  v18 = *(v17 + 80);
  v19 = v18;
  if (!v18)
  {
LABEL_13:
    v20 = 0;
    goto LABEL_9;
  }

  v20 = *(v18 + 4);
LABEL_9:
  v21 = v20;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10002D6F0;
  v23[3] = &unk_100059490;
  v22 = *(a1 + 48);
  v23[4] = *(a1 + 32);
  v24 = v22;
  sub_100007080(v10, v12, v16, v21, v23);
}

void sub_10002D6F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
    WeakRetained = sub_100024AE0();
    if (os_signpost_enabled(WeakRetained))
    {
      *buf = 138412290;
      v18 = v6;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, WeakRetained, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ISO18013_GenerateMDocRequest", "Failed, Error=%@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v8 = *(a1 + 32);
  if (!v8)
  {
    v10 = 0;
LABEL_9:
    v13 = *(a1 + 32);
    if (v13)
    {
      WeakRetained = objc_loadWeakRetained((v13 + 152));
      v12 = 0;
    }

    else
    {
      v12 = 0;
      WeakRetained = 0;
    }

    goto LABEL_11;
  }

  v9 = *(v8 + 32);
  v10 = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

  v11 = objc_loadWeakRetained(v9 + 2);
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v11;
  WeakRetained = v12;
LABEL_11:

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSXPCHelper iso18013ReaderSendSessionEstablishment:callback:]_block_invoke", 945, *(a1 + 32), @"readerSend AC: %@", v14, v15, WeakRetained);
  [WeakRetained altCarrierSendData:v5 completion:*(a1 + 40)];
  v16 = sub_100024AE0();
  if (os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ISO18013_GenerateMDocRequest", &unk_10005485E, buf, 2u);
  }

LABEL_14:
}

void sub_10002D9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = *(a1 + 48);
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSXPCHelper iso18013ReaderSendSessionData:status:callback:]_block_invoke", 968, *(a1 + 32), @"readerSend: %@, status=%@", a7, a8, *(a1 + 40));
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = v9[7];
    v9 = v9[10];
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = v9;
  v14 = v10;
  if (v13)
  {
    v15 = v13[4];
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002DAF8;
  v20[3] = &unk_1000594B8;
  v17 = *(a1 + 48);
  v18 = *(a1 + 32);
  v21 = v17;
  v22 = v18;
  v23 = *(a1 + 56);
  sub_100007348(v14, v11, v12, v16, v20);
}

void sub_10002DAF8(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if ([*(a1 + 32) integerValue] == 20 || objc_msgSend(*(a1 + 32), "integerValue") == 10 || objc_msgSend(*(a1 + 32), "integerValue") == 11)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(v6 + 56);
      if (v7)
      {
        *(v7 + 10) = 1;
      }
    }
  }

  if (v5)
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_13;
  }

  v8 = *(a1 + 40);
  if (!v8)
  {
    v10 = 0;
    goto LABEL_17;
  }

  v9 = *(v8 + 32);
  v10 = v9;
  if (!v9)
  {
LABEL_17:
    WeakRetained = 0;
    goto LABEL_12;
  }

  WeakRetained = objc_loadWeakRetained(v9 + 2);
LABEL_12:
  [WeakRetained altCarrierSendData:v12 completion:*(a1 + 48)];

LABEL_13:
}

NSXPCInterface *sub_10002DD68()
{
  objc_opt_self();

  return [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___STSHelperProtocol];
}

NSXPCInterface *sub_10002DDA0()
{
  objc_opt_self();

  return [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___STSHelperCallbackProtocol];
}

uint64_t sub_10002DDD8(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 12);
  }

  *(*(*(result + 40) + 8) + 24) = v1 & 1;
  v2 = *(result + 32);
  if (v2)
  {
    *(v2 + 12) = 1;
  }

  return result;
}

void sub_10002DE08(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10002DE78;
  v2[3] = &unk_100058A30;
  v2[4] = v1;
  sub_10002E058(v1, v2);
}

void sub_10002DE78(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSXPCHelper _invalidate]_block_invoke_3", 1062, *(a1 + 32), @"AC send error=%@", v4, v5, v3);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 64);
  }

  else
  {
    v8 = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002DF3C;
  block[3] = &unk_100058A08;
  block[4] = v7;
  dispatch_async(v8, block);
}

void sub_10002DF3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return;
  }

  v2 = *(v1 + 80);
  *(v1 + 80) = 0;

  v3 = *(v1 + 40);
  *(v1 + 40) = 0;

  sub_10000B65C(*(v1 + 32));
  v4 = *(v1 + 32);
  *(v1 + 32) = 0;

  v5 = *(v1 + 56);
  if (v5)
  {
    v6 = *(v1 + 88);
    if (*(v5 + 10) == 1)
    {
      if (v6)
      {
        v7 = 0;
LABEL_10:
        sub_10000F6AC(v6, v7);
        goto LABEL_11;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v6 = *(v1 + 88);
  }

  if (v6)
  {
    v7 = 1;
    goto LABEL_10;
  }

LABEL_11:
  v8 = *(v1 + 88);
  *(v1 + 88) = 0;

  [STSWifiSession connectionEstablishmentTimedout]_0(*(v1 + 96));
  v9 = *(v1 + 96);
  *(v1 + 96) = 0;

  v10 = *(v1 + 104);
  *(v1 + 104) = 0;

  v11 = *(v1 + 112);
  *(v1 + 112) = 0;

  sub_10000759C(*(v1 + 56));
  v12 = *(v1 + 56);
  *(v1 + 56) = 0;

  sub_10002CC54(v1, v13, v14, v15, v16, v17, v18, v19);
  sub_10002CE94(v1, v20, v21, v22, v23, v24, v25, v26);
  WeakRetained = objc_loadWeakRetained((v1 + 144));
  [WeakRetained didInvalidate];
}

void sub_10002E058(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a1)
  {
    if (*(a1 + 56))
    {
      v6 = *(a1 + 32);
      if (v6 && (v9 = v6, WeakRetained = objc_loadWeakRetained(v6 + 2), v9, WeakRetained))
      {
        if ([WeakRetained isConnected])
        {
          if (*(a1 + 10) == 1)
          {
            sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSXPCHelper _sendSessionError:completion:]", 1338, a1, @"Session termination sent previously", v11, v12, v19);
            v5[2](v5, 0);
          }

          else
          {
            if ((*(a1 + 11) & 1) == 0 && !*(a1 + 72))
            {
              v15 = *(a1 + 32);
              if (!v15 || (*(v15 + 8) & 1) == 0)
              {
                sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSXPCHelper _sendSessionError:completion:]", 1345, a1, @"SessionTermination before SessionEstablishment received", v11, v12, v19);
              }
            }

            *(a1 + 10) = 1;
            v16 = *(a1 + 56);
            v20[0] = _NSConcreteStackBlock;
            v20[1] = 3221225472;
            v20[2] = sub_10002E8D0;
            v20[3] = &unk_100059558;
            WeakRetained = WeakRetained;
            v21 = WeakRetained;
            v22 = v5;
            sub_100005A40(v16, 20, v20);
          }
        }

        else
        {
          sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSXPCHelper _sendSessionError:completion:]", 1332, a1, @"AC connection is disconnected", v11, v12, v19);
          v23 = NSLocalizedDescriptionKey;
          v24 = off_100069A80;
          v13 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
          v14 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:8 userInfo:v13];

          (v5)[2](v5, v14);
        }
      }

      else
      {
        sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSXPCHelper _sendSessionError:completion:]", 1326, a1, @"AC connection has not started", v7, v8, v19);
        v23 = NSLocalizedDescriptionKey;
        v24 = off_100069A80;
        v17 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        v18 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:8 userInfo:v17];

        (v5)[2](v5, v18);
        WeakRetained = 0;
      }
    }

    else
    {
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSXPCHelper _sendSessionError:completion:]", 1318, a1, @"iso18013Handler has not started", v3, v4, v19);
      v5[2](v5, 0);
    }
  }
}

void sub_10002E3C0(uint64_t a1, void *a2, void *a3, void *a4, char a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E4BC;
  block[3] = &unk_100059508;
  v17 = v11;
  v18 = v12;
  v19 = v9;
  v20 = v10;
  v21 = a5;
  v13 = v10;
  v14 = v9;
  v15 = v11;
  sub_10002C7B4(v12, block, QOS_CLASS_USER_INITIATED);
}

void sub_10002E4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 32))
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSXPCHelper _iso18013DeviceProcessRequest:]_block_invoke_2", 1271, *(a1 + 40), @"Processing error: %@", a7, a8, *(a1 + 32));
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v9 = *(a1 + 40);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v22 = sub_10002E73C;
  v23 = &unk_100058AF8;
  v24 = v9;
  v25 = &v26;
  v10 = v21;
  os_unfair_lock_lock(v9 + 4);
  v22(v10);
  os_unfair_lock_unlock(v9 + 4);

  if (!*(a1 + 32) || [*(a1 + 48) count] || *(a1 + 56) || (v27[3] & 1) != 0)
  {
    v11 = sub_100024AE0();
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ISO18013_ProcessMDocRequest", &unk_10005485E, buf, 2u);
    }

    if (*(a1 + 64) == 1)
    {
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSXPCHelper _iso18013DeviceProcessRequest:]_block_invoke", 1302, *(a1 + 40), @"Stop further processing", v12, v13, v17);
    }

    else
    {
      if (!*(a1 + 56))
      {
        __assert_rtn("[STSXPCHelper _iso18013DeviceProcessRequest:]_block_invoke", "STSXPCHelper.m", 1307, "readerAuthInfo != nil");
      }

      v14 = *(a1 + 40);
      if (v14)
      {
        v14 = v14[4];
      }

      v15 = v14;
      sub_10000BA44(v15, *(a1 + 48), *(a1 + 56));
    }
  }

  else
  {
    v16 = *(a1 + 40);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10002E750;
    v19[3] = &unk_100059468;
    v19[4] = v16;
    v20 = *(a1 + 32);
    sub_10002E058(v16, v19);
  }

  _Block_object_dispose(&v26, 8);
}

void sub_10002E750(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSXPCHelper _iso18013DeviceProcessRequest:]_block_invoke_4", 1283, *(a1 + 32), @"AC send error=%@", v4, v5, v3);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 32);
  }

  else
  {
    v8 = 0;
  }

  v9 = v6;
  if (!v6)
  {
    v9 = *(a1 + 40);
  }

  sub_10000BB48(v8, &stru_100059C08, v9);
  v10 = sub_100024AE0();
  if (os_signpost_enabled(v10))
  {
    v11 = *(a1 + 40);
    *buf = 138412546;
    v14 = v11;
    v15 = 2112;
    v16 = v6;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ISO18013_ProcessMDocRequest", "Failed, ProcessRequestError=%@, acSendError=%@", buf, 0x16u);
  }

  v12 = sub_100024AE0();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ISO18013_AltCarrierProcessing", &unk_10005485E, buf, 2u);
  }
}

void sub_10002E8E0(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 32);
  }

  else
  {
    v10 = 0;
  }

  v11 = a4;
  v12 = a3;
  v15 = a2;
  sub_10000C2E0(v10, v15, v12, v11, a5, 0);
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSXPCHelper _iso18013ReaderProcessResponse:altCarrierStatus:]_block_invoke", 1387, *(a1 + 32), @"SessionData=%@, sessionDataStatus=%@, deviceResponseStatus=%@", v13, v14, v15);
}

void sub_10002E9B8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = +[NSDate now];
  v14 = objc_opt_new();
  [v14 setObject:v13 forKeyedSubscript:@"transactionEndEventTime"];
  v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 code]);
  [v14 setObject:v15 forKeyedSubscript:@"errorCode"];

  v16 = +[STSReaderAnalyticsLogger sharedCALogger];
  [v16 postReaderTransactionEvent:v14 prepOnly:0];

  v17 = sub_100024AE0();
  if (os_signpost_enabled(v17))
  {
    *buf = 138412290;
    v21 = v12;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ISO18013_ProcessMDocResponse", "error=%@", buf, 0xCu);
  }

  if (v12)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSXPCHelper _iso18013ReaderProcessResponse:altCarrierStatus:]_block_invoke", 1445, *(a1 + 32), @"SessionData decoding failure, error=%@", v18, v19, v12);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10002EBA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (v13)
        {
          v13 = v13[2];
        }

        v14 = v13;
        [v7 addObject:{v14, v15}];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [*(a1 + 32) setObject:v7 forKey:v5];
}

void sub_10002ED00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSXPCHelper startConnectionEstablishmentTimer:]_block_invoke", 1479, *(a1 + 32), @"Connection establishment timeout after %fs", a7, a8, 0x403E000000000000);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    [*(WeakRetained + 12) connectionEstablishmentTimedout];
    v10 = v11[11];
  }

  else
  {
    [0 connectionEstablishmentTimedout];
    v10 = 0;
  }

  [v10 connectionEstablishmentTimedout];
}

void sub_10002ED98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSXPCHelper startAltCarrierSessionTimer:]_block_invoke", 1503, *(a1 + 32), @"AC session timeout after %fs", a7, a8, 0x4072C00000000000);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    [*(WeakRetained + 12) sessionTimedout];
    v10 = v11[11];
  }

  else
  {
    [0 sessionTimedout];
    v10 = 0;
  }

  [v10 sessionTimedout];
}

id *sub_10002EF14(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v8.receiver = a1;
    v8.super_class = BTAddressUpdateObserver;
    a1 = objc_msgSendSuper2(&v8, "init");
    if (a1)
    {
      v5 = objc_opt_new();
      v6 = a1[1];
      a1[1] = v5;

      objc_storeStrong(a1 + 3, a2);
    }
  }

  return a1;
}

id *sub_10002F190(id *a1)
{
  v1 = a1;
  if (a1)
  {
    [a1[1] lock];
    v2 = v1[2];
    [v1[1] unlock];
    if (v2)
    {
      v1 = v2;
    }

    else
    {
      v3 = v1[3];
      [v3 addObserver:v1 forKeyPath:@"advertisingAddress" options:0 context:v3];

      v4 = [[NSDate alloc] initWithTimeIntervalSinceNow:1.0];
      v5 = 0;
      if ([v1[1] waitUntilDate:v4])
      {
        v5 = v1[2];
      }

      [v1[1] unlock];
      v6 = v1[3];
      [v6 removeObserver:v1 forKeyPath:@"advertisingAddress" context:v6];

      v1 = v5;
    }
  }

  return v1;
}

id sub_10002F2E8(id result, uint64_t a2)
{
  if (result)
  {
    v2.receiver = result;
    v2.super_class = ISOCentral;
    return objc_msgSendSuper2(&v2, "writeData:toUUID:", a2, @"00000006-A123-48CE-896B-4C76973373E6");
  }

  return result;
}

id sub_10002F370(id result, uint64_t a2)
{
  if (result)
  {
    v2.receiver = result;
    v2.super_class = ReaderCentral;
    return objc_msgSendSuper2(&v2, "writeData:toUUID:", a2, @"00000002-A123-48CE-896B-4C76973373E6");
  }

  return result;
}

id sub_10002FC5C(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a1)
  {
    goto LABEL_10;
  }

  v30.receiver = a1;
  v30.super_class = ISODeviceEngagement;
  v6 = objc_msgSendSuper2(&v30, "init");
  v7 = v6;
  if (v6)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    *(v6 + 1) = a3;
    v8 = [CBOR decodeFromData:v5];
    v9 = *(v7 + 12);
    *(v7 + 12) = v8;

    v12 = *(v7 + 12);
    if (!v12 || [v12 type] != 5)
    {
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISODeviceEngagement initWithData:type:]", 91, v7, @"Invalid CBOR type", v10, v11, v18);
      goto LABEL_9;
    }

    v13 = objc_opt_new();
    v14 = [*(v7 + 12) dictionary];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_10002FE74;
    v21 = &unk_100059638;
    v7 = v7;
    v24 = &v26;
    v25 = a3;
    v22 = v7;
    v23 = v13;
    [v14 enumerateKeysAndObjectsUsingBlock:&v18];

    if ((a3 & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      if (*(v27 + 24) != 1)
      {
LABEL_7:

LABEL_9:
        _Block_object_dispose(&v26, 8);

LABEL_10:
        v7 = 0;
        goto LABEL_11;
      }
    }

    else if (!*(v7 + 2) && (v27[3] & 1) == 0)
    {
      goto LABEL_7;
    }

    if ([v13 count])
    {
      v16 = [v13 copy];
      v17 = *(v7 + 8);
      *(v7 + 8) = v16;
    }

    _Block_object_dispose(&v26, 8);
  }

LABEL_11:

  return v7;
}

void sub_10002FE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002FE74(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v5 = a2;
  v78 = a3;
  v79 = v5;
  v6 = [v5 string];

  if (v6)
  {
    v7 = [v5 string];
  }

  else
  {
    if (![v5 isWholeNumber])
    {
      v27 = *(a1 + 32);
      v77 = v5;
      v28 = @"Unexpected key type: %@";
      v29 = 104;
      goto LABEL_20;
    }

    v7 = [v5 numeric];
  }

  v10 = v7;
  v11 = [v7 integerValue];

  v14 = v78;
  if (v11 <= 2)
  {
    if (v11)
    {
      if (v11 != 1)
      {
        if (v11 != 2)
        {
          goto LABEL_24;
        }

        if ([v78 type] == 4)
        {
          v19 = [v78 array];
          v94 = 0;
          v95 = &v94;
          v96 = 0x3032000000;
          v97 = sub_100030730;
          v98 = sub_100030740;
          v99 = 0;
          v90 = 0;
          v91 = &v90;
          v92 = 0x2020000000;
          v93 = 0;
          v86[0] = _NSConcreteStackBlock;
          v86[1] = 3221225472;
          v86[2] = sub_100030748;
          v86[3] = &unk_100059610;
          v87 = *(a1 + 32);
          v88 = &v90;
          v89 = &v94;
          [v19 enumerateObjectsUsingBlock:v86];
          if ((v91[3] & 1) == 0)
          {
            v22 = v95[5];
            v23 = *(a1 + 32);
            if (v22)
            {
              objc_storeStrong(v23 + 11, v22);

              _Block_object_dispose(&v90, 8);
              _Block_object_dispose(&v94, 8);

              goto LABEL_59;
            }

            sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISODeviceEngagement initWithData:type:]_block_invoke_2", 213, v23, @"Device retrieval method not found", v20, v21, v77);
          }

          *a4 = 1;

          _Block_object_dispose(&v90, 8);
          _Block_object_dispose(&v94, 8);

          goto LABEL_59;
        }

        v74 = *(a1 + 32);
        v75 = @"Device retrieval method not valid";
        v76 = 160;
LABEL_53:
        sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISODeviceEngagement initWithData:type:]_block_invoke", v76, v74, v75, v17, v18, v77);
        *a4 = 1;
        goto LABEL_60;
      }

      if ([v78 type] != 4 || (objc_msgSend(v78, "array"), v49 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(v49, "count"), v49, v14 = v78, v50 != 2))
      {
        v74 = *(a1 + 32);
        v75 = @"Invalid device engagement security structure";
        v76 = 127;
        goto LABEL_53;
      }

      v51 = [v78 array];
      v33 = [v51 objectAtIndex:0];

      if (v33 && ([v33 isWholeNumber] & 1) != 0)
      {
        v54 = [NSMutableArray alloc];
        v55 = [v33 numeric];
        v56 = [v54 initWithObjects:v55];
        v57 = *(a1 + 32);
        v58 = *(v57 + 32);
        *(v57 + 32) = v56;

        v59 = *(a1 + 56);
        *(*(*(a1 + 48) + 8) + 24) = 1;
        v14 = v78;
        if ((v59 | 2) != 2)
        {
LABEL_64:

          goto LABEL_60;
        }

        v60 = [v78 array];
        v61 = [v60 objectAtIndex:1];

        if (v61 && [v61 type] == 2 && (objc_msgSend(v61, "tag"), v64 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v64, "numeric"), v65 = objc_claimAutoreleasedReturnValue(), v66 = objc_msgSend(v65, "intValue"), v65, v64, v66 == 24))
        {
          v67 = [v61 data];
          v68 = [CBOR decodeFromData:v67];

          if (v68 && [v68 type] == 5)
          {
            v71 = [[COSEKey alloc] initWithCBOR:v68];
            v72 = *(a1 + 32);
            v73 = *(v72 + 16);
            *(v72 + 16) = v71;
          }

          else
          {
            sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISODeviceEngagement initWithData:type:]_block_invoke", 152, *(a1 + 32), @"Invalid device engagement security structure: public key", v69, v70, 0);
            *a4 = 1;
          }
        }

        else
        {
          sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISODeviceEngagement initWithData:type:]_block_invoke", 145, *(a1 + 32), @"Invalid device engagement security structure: public key", v62, v63, 0);
          *a4 = 1;
        }
      }

      else
      {
        sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISODeviceEngagement initWithData:type:]_block_invoke", 134, *(a1 + 32), @"Invalid device engagement security structure: cipher suite", v52, v53, v77);
        *a4 = 1;
      }

      v14 = v78;
      goto LABEL_64;
    }

    v30 = [v78 string];
    v31 = [v30 length];

    if (v31)
    {
      v32 = [v78 string];
      v33 = [NSDecimalNumber decimalNumberWithString:v32];

      v34 = [v33 integerValue];
      v37 = *(a1 + 32);
      v14 = v78;
      if (v34 == 1)
      {
        sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISODeviceEngagement initWithData:type:]_block_invoke", 121, v37, @"Device engagement major version supported. Version %@. Proceeding further", v35, v36, v78);
      }

      else
      {
        sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISODeviceEngagement initWithData:type:]_block_invoke", 117, v37, @"Unsupported device engagement version %@", v35, v36, v78);
        *a4 = 1;
      }

      goto LABEL_64;
    }

    v27 = *(a1 + 32);
    v28 = @"Device engagement version nil";
    v29 = 111;
LABEL_20:
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISODeviceEngagement initWithData:type:]_block_invoke", v29, v27, v28, v8, v9, v77);
    *a4 = 1;
    goto LABEL_59;
  }

  if (v11 > 4)
  {
    if (v11 != 5)
    {
      if (v11 == 6)
      {
        v24 = sub_1000328FC([ISODeviceEngagementCapabilities alloc], v78);
        v25 = *(a1 + 32);
        v26 = *(v25 + 48);
        *(v25 + 48) = v24;

        goto LABEL_60;
      }

LABEL_24:
      [*(a1 + 40) setObject:v78 forKeyedSubscript:v79];
      goto LABEL_60;
    }

    v38 = objc_alloc_init(NSMutableArray);
    if ([v78 type] != 4)
    {
      *a4 = 1;
    }

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v39 = [v78 array];
    v40 = [v39 countByEnumeratingWithState:&v82 objects:v100 count:16];
    if (v40)
    {
      v41 = *v83;
      do
      {
        for (i = 0; i != v40; i = i + 1)
        {
          if (*v83 != v41)
          {
            objc_enumerationMutation(v39);
          }

          v45 = sub_10000AC2C([ISOOriginInfo alloc], *(*(&v82 + 1) + 8 * i));
          if (v45)
          {
            [v38 addObject:v45];
          }

          else
          {
            sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISODeviceEngagement initWithData:type:]_block_invoke_2", 231, *(a1 + 32), @"Invalid OriginInfo", v43, v44, v77);
            *a4 = 1;
          }
        }

        v40 = [v39 countByEnumeratingWithState:&v82 objects:v100 count:16];
      }

      while (v40);
    }

    v46 = [v38 copy];
    v47 = *(a1 + 32);
    v48 = *(v47 + 40);
    *(v47 + 40) = v46;

LABEL_59:
    v14 = v78;
    goto LABEL_60;
  }

  if (v11 == 3)
  {
    v15 = @"Ignore ServerRetrievalMethods";
    v16 = 218;
  }

  else
  {
    v15 = @"Ignore ProtocolInfo";
    v16 = 220;
  }

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISODeviceEngagement initWithData:type:]_block_invoke_2", v16, *(a1 + 32), v15, v12, v13, v77);
LABEL_60:
}

void sub_100030704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100030730(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100030748(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v36 = a2;
  if ([v36 type] != 4)
  {
    goto LABEL_10;
  }

  v9 = [v36 array];
  if ([v9 count] != 3)
  {

    goto LABEL_10;
  }

  v10 = [v36 array];
  v11 = [v10 objectAtIndexedSubscript:2];
  v12 = [v11 type];

  if (v12 != 5)
  {
LABEL_10:
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISODeviceEngagement initWithData:type:]_block_invoke", 171, *(a1 + 32), @"Invalid DeviceRetrievalMethod envelope at index %lu", v7, v8, a3);
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
    goto LABEL_11;
  }

  v13 = [v36 array];
  v14 = [v13 objectAtIndexedSubscript:1];
  v15 = [v14 numeric];
  v16 = [v15 integerValue];

  if (v16 != 1)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISODeviceEngagement initWithData:type:]_block_invoke", 178, *(a1 + 32), @"Invalid DeviceRetrievalMethod version %lu at index %lu", v17, v18, v16);
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
    goto LABEL_11;
  }

  v19 = [v36 array];
  v20 = [v19 objectAtIndexedSubscript:2];
  v21 = [v20 dictionary];

  v22 = [v36 array];
  v23 = [v22 objectAtIndexedSubscript:0];
  v24 = [v23 numeric];
  v25 = [v24 integerValue];

  if (v25 == 3)
  {
    v28 = *(a1 + 32);
    v29 = @"WiFi DeviceRetrievalMethod supplied. Not supported. Skipping.";
    v30 = 200;
    goto LABEL_17;
  }

  if (v25 == 2)
  {
    v31 = sub_1000309FC([ISODeviceRetrievalMethodBLE alloc], v21);
    v32 = [NSArray arrayWithObject:v31];
    v33 = *(*(a1 + 48) + 8);
    v34 = *(v33 + 40);
    *(v33 + 40) = v32;
  }

  else if (v25 == 1)
  {
    v28 = *(a1 + 32);
    v29 = @"NFC DeviceRetrievalMethod supplied. Not supported. Skipping.";
    v30 = 191;
LABEL_17:
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISODeviceEngagement initWithData:type:]_block_invoke", v30, v28, v29, v26, v27, v35);
  }

LABEL_11:
}

id sub_1000309FC(void *a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    v12 = 0;
    goto LABEL_14;
  }

  v4 = [CBOR cborWithInteger:0];
  v5 = [CBOR cborWithInteger:1];
  v32 = [CBOR cborWithInteger:10];
  v31 = [CBOR cborWithInteger:11];
  v30 = [CBOR cborWithInteger:20];
  v6 = [v3 objectForKeyedSubscript:v4];
  v7 = [v6 BOOLValue];

  v8 = [v3 objectForKeyedSubscript:v5];
  v9 = [v8 BOOLValue];

  if (v7 & 1) != 0 || (v9)
  {
    if (v7)
    {
      v13 = [v3 objectForKeyedSubscript:v32];
      v29 = [v13 data];

      v14 = [v3 objectForKeyedSubscript:v30];
      v15 = [v14 data];

      if (!v9)
      {
LABEL_7:
        v16 = 0;
LABEL_10:
        v18 = v29;
        v19 = [a1 initWithType:2 version:{1, v29}];
        v20 = v19;
        if (v19)
        {
          v19[24] = v7;
          v21 = [v18 copy];
          v22 = v20[4];
          v20[4] = v21;

          *(v20 + 25) = v9;
          v23 = [v16 copy];
          v24 = v20[5];
          v20[5] = v23;

          v25 = [v15 copy];
          v26 = v20[6];
          v20[6] = v25;
        }

        a1 = v20;

        v12 = a1;
        goto LABEL_13;
      }
    }

    else
    {
      v29 = 0;
      v15 = 0;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    v17 = [v3 objectForKeyedSubscript:{v31, v29}];
    v16 = [v17 data];

    goto LABEL_10;
  }

  sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISODeviceRetrievalMethodBLE initWithOptions:]", 492, a1, @"Invalid BLE device retrieval method: supports neither peripheral nor central modes", v10, v11, v28);
  v12 = 0;
LABEL_13:

LABEL_14:
  return v12;
}

id sub_100030C88(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v28.receiver = a1;
  v28.super_class = ISODeviceEngagement;
  v18 = objc_msgSendSuper2(&v28, "init");
  if (v18)
  {
    v19 = [v13 copy];
    v20 = *(v18 + 10);
    *(v18 + 10) = v19;

    objc_storeStrong(v18 + 2, a3);
    v21 = [[NSMutableArray alloc] initWithArray:v15];
    v22 = *(v18 + 4);
    *(v18 + 4) = v21;

    *(v18 + 1) = a5;
    v23 = [v16 copy];
    v24 = *(v18 + 5);
    *(v18 + 5) = v23;

    v25 = [v17 copy];
    v26 = *(v18 + 6);
    *(v18 + 6) = v25;
  }

  return v18;
}

id *sub_100030E50(id *a1)
{
  if (a1)
  {
    a1 = a1[2];
    v1 = vars8;
  }

  return a1;
}

id sub_10003130C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_10002FC5C([ISODeviceEngagementNFC alloc], v2, 0);

  return v3;
}

id sub_100031370(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a1;
  if (a1)
  {
    v11 = a6;
    v12 = a5;
    v13 = a3;
    v14 = a2;
    v15 = [NSNumber numberWithInteger:a4];
    v19 = v15;
    v16 = [NSArray arrayWithObjects:&v19 count:1];
    v17 = sub_100030C88(v6, v14, v13, v16, 0, v12, v11);

    v6 = v17;
  }

  return v6;
}

id sub_100031658(id a1, char a2, char a3, void *a4, void *a5, void *a6)
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (a1)
  {
    v14 = [a1 initWithType:2 version:1];
    a1 = v14;
    if (v14)
    {
      v14[24] = a2;
      v15 = [v11 copy];
      v16 = *(a1 + 4);
      *(a1 + 4) = v15;

      *(a1 + 25) = a3;
      v17 = [v12 copy];
      v18 = *(a1 + 5);
      *(a1 + 5) = v17;

      v19 = [v13 copy];
      v20 = *(a1 + 6);
      *(a1 + 6) = v19;
    }
  }

  return a1;
}

id sub_100031AAC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_10002FC5C([ISODeviceEngagementQRCode alloc], v2, 2);

  return v3;
}

id sub_100031B10(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  if (!a1)
  {
    return 0;
  }

  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a3;
  v17 = a2;
  v18 = [NSNumber numberWithInteger:a4];
  v40 = v18;
  v19 = [NSArray arrayWithObjects:&v40 count:1];
  v20 = v17;
  v21 = v16;
  v22 = v19;
  v23 = v15;
  v24 = v14;
  v25 = v13;
  v39.receiver = a1;
  v39.super_class = ISODeviceEngagement;
  v26 = objc_msgSendSuper2(&v39, "init");
  if (v26)
  {
    v27 = [v20 copy];
    v28 = *(v26 + 10);
    *(v26 + 10) = v27;

    objc_storeStrong(v26 + 2, a3);
    v29 = [[NSMutableArray alloc] initWithArray:v22];
    v30 = *(v26 + 4);
    *(v26 + 4) = v29;

    *(v26 + 1) = 2;
    v31 = [v23 copy];
    v32 = *(v26 + 11);
    *(v26 + 11) = v31;

    v33 = [v24 copy];
    v34 = *(v26 + 5);
    *(v26 + 5) = v33;

    v35 = [v25 copy];
    v36 = *(v26 + 6);
    *(v26 + 6) = v35;
  }

  v37 = v26;
  return v37;
}

id sub_100031D24(id result, void *a2)
{
  if (result)
  {
    return sub_100030C88(result, @"1.0", 0, a2, 1, 0, 0);
  }

  return result;
}

id sub_100031D4C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_10002FC5C([UnifiedAccessDeviceEngagement alloc], v2, 1);

  return v3;
}

id sub_100031DB0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if (!v2)
  {
    v8 = 0;
    goto LABEL_60;
  }

  v6 = *(v2 + 1);
  if (v6 == 2)
  {
    v10 = *(v2 + 12);
    if (v10)
    {
      v8 = v10;
    }

    else
    {
      v28 = [CBOR cborWithUnsignedInteger:0];
      v29 = [CBOR cborWithUnsignedInteger:1];
      v104 = [CBOR cborWithUnsignedInteger:2];
      v102 = [CBOR cborWithUnsignedInteger:5];
      v100 = [CBOR cborWithUnsignedInteger:6];
      v30 = objc_alloc_init(NSMutableDictionary);
      v31 = *(v2 + 10);
      v32 = [CBOR cborWithUTF8String:v31];
      v109 = v28;
      [v30 setObject:v32 forKeyedSubscript:v28];

      v33 = [NSData dataWithCOSEKey:*(v2 + 2)];
      v34 = *(v2 + 4);
      v35 = [v34 firstObject];
      v36 = +[CBOR cborWithInteger:](CBOR, "cborWithInteger:", [v35 integerValue]);
      v125[0] = v36;
      v99 = v33;
      v37 = [v33 cborEncodeToBstrCbor];
      v125[1] = v37;
      v38 = [NSArray arrayWithObjects:v125 count:2];
      v39 = [CBOR cborWithArray:v38];
      v101 = v30;
      v106 = v29;
      [v30 setObject:v39 forKeyedSubscript:v29];

      v40 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(v2 + 11) count]);
      v121 = 0u;
      v122 = 0u;
      v123 = 0u;
      v124 = 0u;
      v41 = *(v2 + 11);
      v42 = [v41 countByEnumeratingWithState:&v121 objects:v120 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v122;
        do
        {
          for (i = 0; i != v43; i = i + 1)
          {
            if (*v122 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = [*(*(&v121 + 1) + 8 * i) encode];
            [v40 addObject:v46];
          }

          v43 = [v41 countByEnumeratingWithState:&v121 objects:v120 count:16];
        }

        while (v43);
      }

      v47 = [CBOR cborWithArray:v40];
      v48 = v101;
      v49 = v104;
      [v101 setObject:v47 forKeyedSubscript:v104];

      if ([*(v2 + 8) count])
      {
        [v101 addEntriesFromDictionary:*(v2 + 8)];
      }

      v119[0] = v109;
      v119[1] = v106;
      v119[2] = v104;
      v50 = [NSArray arrayWithObjects:v119 count:3];
      v51 = [v50 mutableCopy];

      if (*(v2 + 5))
      {
        v52 = objc_alloc_init(NSMutableArray);
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v53 = *(v2 + 5);
        v54 = [v53 countByEnumeratingWithState:&v115 objects:&v111 count:16];
        if (v54)
        {
          v55 = v54;
          v56 = *v116;
          do
          {
            for (j = 0; j != v55; j = j + 1)
            {
              if (*v116 != v56)
              {
                objc_enumerationMutation(v53);
              }

              v58 = sub_10000B060(CBOR, *(*(&v115 + 1) + 8 * j));
              [v52 addObject:v58];
            }

            v55 = [v53 countByEnumeratingWithState:&v115 objects:&v111 count:16];
          }

          while (v55);
        }

        v59 = [v52 copy];
        v60 = [CBOR cborWithArray:v59];
        v48 = v101;
        [v101 setObject:v60 forKeyedSubscript:v102];

        [v51 addObject:v102];
        v49 = v104;
      }

      v61 = *(v2 + 6);
      if (v61)
      {
        v62 = sub_100032D38(CBOR, v61);
        [v48 setObject:v62 forKeyedSubscript:v100];

        [v51 addObject:v100];
      }

      v63 = [CBOR cborWithDictionary:v48 keyOrderList:v51];
      v64 = *(v2 + 12);
      *(v2 + 12) = v63;

      v8 = *(v2 + 12);
    }

    v27 = @"QRCode";
    if (v8)
    {
      goto LABEL_61;
    }

    goto LABEL_45;
  }

  if (v6 == 1)
  {
    v9 = *(v2 + 12);
    if (v9)
    {
      v8 = v9;
    }

    else
    {
      v11 = [CBOR cborWithUnsignedInteger:0];
      v12 = [CBOR cborWithInteger:1];
      v13 = objc_alloc_init(NSMutableDictionary);
      v14 = *(v2 + 10);
      v15 = [CBOR cborWithUTF8String:v14];
      v108 = v11;
      [v13 setObject:v15 forKeyedSubscript:v11];

      v16 = objc_alloc_init(NSMutableArray);
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v17 = *(v2 + 4);
      v18 = [v17 countByEnumeratingWithState:&v111 objects:v120 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v112;
        do
        {
          for (k = 0; k != v19; k = k + 1)
          {
            if (*v112 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = +[CBOR cborWithInteger:](CBOR, "cborWithInteger:", [*(*(&v111 + 1) + 8 * k) integerValue]);
            [v16 addObject:v22];
          }

          v19 = [v17 countByEnumeratingWithState:&v111 objects:v120 count:16];
        }

        while (v19);
      }

      v23 = [CBOR cborWithArray:v16];
      [v13 setObject:v23 forKeyedSubscript:v12];

      if ([*(v2 + 8) count])
      {
        [v13 addEntriesFromDictionary:*(v2 + 8)];
      }

      *&v121 = v108;
      *(&v121 + 1) = v12;
      v24 = [NSArray arrayWithObjects:&v121 count:2];
      v25 = [CBOR cborWithDictionary:v13 keyOrderList:v24];
      v26 = *(v2 + 12);
      *(v2 + 12) = v25;

      v8 = *(v2 + 12);
    }

    v27 = @"UA";
    if (v8)
    {
      goto LABEL_61;
    }

LABEL_45:
    sub_100024938(OS_LOG_TYPE_ERROR, 0, "+[NSData(ISODeviceEngagement) dataWithISODeviceEngagement:]", 769, @"Only NFC, UnifiedAccess and QRCode device engagement are supported", v3, v4, v5, v98);
    v65 = 0;
    goto LABEL_64;
  }

  if (v6)
  {
    goto LABEL_45;
  }

  v7 = *(v2 + 12);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v66 = [CBOR cborWithUnsignedInteger:0];
    v67 = [CBOR cborWithUnsignedInteger:1];
    v110 = [CBOR cborWithUnsignedInteger:5];
    v105 = [CBOR cborWithUnsignedInteger:6];
    v68 = objc_alloc_init(NSMutableDictionary);
    v69 = *(v2 + 10);
    v70 = [CBOR cborWithUTF8String:v69];
    v107 = v66;
    [v68 setObject:v70 forKeyedSubscript:v66];

    v71 = [NSData dataWithCOSEKey:*(v2 + 2)];
    v72 = *(v2 + 4);
    v73 = [v72 firstObject];
    v74 = +[CBOR cborWithInteger:](CBOR, "cborWithInteger:", [v73 integerValue]);
    *&v115 = v74;
    v103 = v71;
    v75 = [v71 cborEncodeToBstrCbor];
    *(&v115 + 1) = v75;
    v76 = [NSArray arrayWithObjects:&v115 count:2];
    v77 = [CBOR cborWithArray:v76];
    [v68 setObject:v77 forKeyedSubscript:v67];

    if (*(v2 + 5))
    {
      v78 = objc_alloc_init(NSMutableArray);
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v79 = *(v2 + 5);
      v80 = [v79 countByEnumeratingWithState:&v111 objects:v120 count:16];
      if (v80)
      {
        v81 = v80;
        v82 = *v112;
        do
        {
          for (m = 0; m != v81; m = m + 1)
          {
            if (*v112 != v82)
            {
              objc_enumerationMutation(v79);
            }

            v84 = sub_10000B060(CBOR, *(*(&v111 + 1) + 8 * m));
            [v78 addObject:v84];
          }

          v81 = [v79 countByEnumeratingWithState:&v111 objects:v120 count:16];
        }

        while (v81);
      }

      v85 = [v78 copy];
      v86 = [CBOR cborWithArray:v85];
      [v68 setObject:v86 forKeyedSubscript:v110];
    }

    v87 = *(v2 + 6);
    if (v87)
    {
      v88 = v87;
      v89 = sub_100032D38(CBOR, v88);
      [v68 setObject:v89 forKeyedSubscript:v105];
    }

    if ([*(v2 + 8) count])
    {
      [v68 addEntriesFromDictionary:*(v2 + 8)];
    }

    *&v121 = v107;
    *(&v121 + 1) = v67;
    *&v122 = v110;
    *(&v122 + 1) = v105;
    v90 = [NSArray arrayWithObjects:&v121 count:4];
    v91 = [CBOR cborWithDictionary:v68 keyOrderList:v90];
    v92 = *(v2 + 12);
    *(v2 + 12) = v91;

    v8 = *(v2 + 12);
  }

LABEL_60:
  v27 = @"NFC";
  if (!v8)
  {
    goto LABEL_45;
  }

LABEL_61:
  v93 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.sts"];
  if ([v93 BOOLForKey:@"LogDeviceEngagement"])
  {
    sub_100024A04(OS_LOG_TYPE_DEFAULT, 0, "+[NSData(ISODeviceEngagement) dataWithISODeviceEngagement:]", 776, "[Type=%@] %@", v94, v95, v96, v27);
  }

  v65 = [NSData dataWithCBOR:v8];

LABEL_64:

  return v65;
}

_BYTE *sub_1000328FC(_BYTE *a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_6;
  }

  v15.receiver = a1;
  v15.super_class = ISODeviceEngagementCapabilities;
  a1 = objc_msgSendSuper2(&v15, "init");
  if (a1)
  {
    if ([v3 type] == 5)
    {
      v4 = [v3 dictionary];
      v5 = [CBOR cborWithUnsignedInteger:2];
      v6 = [v4 objectForKeyedSubscript:v5];
      a1[8] = [v6 BOOLValue];

      v7 = [v3 dictionary];
      v8 = [CBOR cborWithUnsignedInteger:4];
      v9 = [v7 objectForKeyedSubscript:v8];
      a1[9] = [v9 BOOLValue];

      v10 = [v3 dictionary];
      v11 = [CBOR cborWithUnsignedInteger:3];
      v12 = [v10 objectForKeyedSubscript:v11];
      a1[10] = [v12 BOOLValue];

      goto LABEL_5;
    }

LABEL_6:
    v13 = 0;
    goto LABEL_7;
  }

LABEL_5:
  a1 = a1;
  v13 = a1;
LABEL_7:

  return v13;
}

_BYTE *sub_100032A7C(_BYTE *result, char a2, char a3, char a4)
{
  if (result)
  {
    v7.receiver = result;
    v7.super_class = ISODeviceEngagementCapabilities;
    result = objc_msgSendSuper2(&v7, "init");
    if (result)
    {
      result[8] = a2;
      result[9] = a3;
      result[10] = a4;
    }
  }

  return result;
}

id sub_100032D38(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc_init(NSMutableDictionary);
  if (v2)
  {
    if (v2[8] == 1)
    {
      v4 = +[CBOR cborTrue];
      v5 = [CBOR cborWithUnsignedInteger:2];
      [v3 setObject:v4 forKeyedSubscript:v5];
    }

    if (v2[9] == 1)
    {
      v6 = +[CBOR cborTrue];
      v7 = [CBOR cborWithUnsignedInteger:4];
      [v3 setObject:v6 forKeyedSubscript:v7];
    }

    if (v2[10] == 1)
    {
      v8 = +[CBOR cborTrue];
      v9 = [CBOR cborWithUnsignedInteger:3];
      [v3 setObject:v8 forKeyedSubscript:v9];
    }
  }

  v10 = [CBOR cborWithDictionary:v3];

  return v10;
}

void *sub_1000359BC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result[4];
  if ((v9[9] & 1) == 0)
  {
    v10 = result;
    v19 = result[5];
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central invalidateAndUpdateStateSignal:reason:]_block_invoke", 629, v9, @"updateStateSignal=%d, status=%lu", a7, a8, *(result + 48));
    v11 = v10[4];
    if (*(v11 + 48))
    {
      if (*(v10 + 48) == 1)
      {
        [v11 _signalConnectionStateChange:2];
        v11 = v10[4];
      }

      [v11 invalidatePeripheral];
      v12 = v10[4];
      v13 = *(v12 + 48);
      *(v12 + 48) = 0;

      v11 = v10[4];
    }

    if ([*(v11 + 56) isScanning])
    {
      [*(v10[4] + 56) stopScan];
    }

    v14 = v10[4];
    v15 = *(v14 + 56);
    *(v14 + 56) = 0;

    *(v10[4] + 9) = 1;
    v16 = [v10[4] isConnected];
    v17 = v10[4];
    v18 = v10[5];
    if (v16)
    {

      return [v17 _activateDisconnectBlock:v18];
    }

    else
    {

      return [v17 _activateConnectionBlock:v18 connectionState:0];
    }
  }

  return result;
}

void sub_100035E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 160), 8);
  _Block_object_dispose((v35 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100035E94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100035EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (*(v9 + 72))
  {
    v10 = @"LE: data pending.";
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 679;
LABEL_9:
    sub_10002483C(v11, 0, "[ISO18013_3_Central writeData:toUUID:]_block_invoke", v12, v9, v10, a7, a8, v30);
    *(*(*(a1 + 48) + 8) + 24) = 0;
    return;
  }

  if ((*(v9 + 8) & 1) == 0)
  {
    v10 = @"Alt carrier no longer connected. Bail out";
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 685;
    goto LABEL_9;
  }

  v13 = [*(a1 + 32) getCharacteristic:*(a1 + 40)];
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = objc_opt_new();
  v17 = *(a1 + 32);
  v18 = *(v17 + 72);
  *(v17 + 72) = v16;

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(*(a1 + 32) + 72));
  v19 = *(a1 + 32);
  v20 = *(v19 + 72);
  v21 = *(v19 + 80);
  if (v21)
  {

    sub_100014EB4(v20, v21);
  }

  else
  {
    sub_100002550(v20, *(*(*(a1 + 56) + 8) + 40));
    v24 = [*(*(a1 + 32) + 48) maximumWriteValueLengthForType:1];
    if ((v24 & 0xFFF0u) >= 0x1F0uLL)
    {
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central writeData:toUUID:]_block_invoke", 702, *(a1 + 32), @"LE: Read MTU=%d is too large; override to MAX_ATTRIBUTE_SIZE", v22, v23, v30);
      v24 = 495;
    }

    v25 = +[NSUserDefaults standardUserDefaults];
    v26 = [v25 integerForKey:@"BTMtuOverride"];

    if (v26 >= 1)
    {
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central writeData:toUUID:]_block_invoke", 709, *(a1 + 32), @"LE: user default MTU override=%d", v27, v28, v26);
      v24 = v26;
    }

    v29 = *(*(a1 + 32) + 72);
    if (v29)
    {
      *(v29 + 10) = v24;
    }
  }
}

void sub_10003608C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 72);
  *(v1 + 72) = 0;
}

id sub_10003609C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 48) canSendWriteWithoutResponse];
  if (v4)
  {
    [*(*(a1 + 32) + 48) writeValue:v3 forCharacteristic:*(*(*(a1 + 40) + 8) + 40) type:1];
  }

  return v4;
}

void sub_100036104(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 72);
  *(v1 + 72) = 0;
}

void sub_100036210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100036228(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v6 = a3;
  v9 = v6;
  if (v6)
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central getBluetoothStatusDict:]_block_invoke", 770, *(a1 + 32), @"LEStatus error:%@", v7, v8, v6);
    if (*(a1 + 48))
    {
      v10 = v9;
      **(a1 + 48) = v9;
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

uint64_t sub_1000367F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 136);
  (*(*(v2 + 104) + 16))();
  v4 = objc_alloc_init(NSMutableData);
  v5 = *(a1 + 32);
  v6 = *(v5 + 136);
  *(v5 + 136) = v4;

  return _objc_release_x1();
}

_BYTE *sub_100036CE8(_BYTE *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v8.receiver = a1;
    v8.super_class = STSConnectionHandoverHandler;
    v6 = objc_msgSendSuper2(&v8, "init");
    a1 = v6;
    if (v6)
    {
      *(v6 + 2) = a2;
      objc_storeWeak(v6 + 3, v5);
      a1[8] = (a2 & 0x40) != 0;
    }
  }

  return a1;
}

uint64_t sub_100036D6C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 && a3)
  {
    v8 = NSLocalizedDescriptionKey;
    v9 = off_100069A48;
    v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v5 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:1 userInfo:v4];

    v6 = v5;
    *a3 = v5;
  }

  return 0;
}

STSCHBluetoothAlternativeCarrier *sub_100036E54(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  if (!a1)
  {
    v34 = 0;
    goto LABEL_119;
  }

  v9 = [STSConnectionHandover connectionHandoverWithData:v8];
  v10 = v9;
  if (!v9)
  {
LABEL_14:
    *a3 = [STSConnectionHandover selectWithAlternativeCarriers:&__NSArray0__struct error:0];
    if (a4)
    {
      v140[0] = NSLocalizedDescriptionKey;
      v141[0] = off_100069A98;
      v31 = [NSDictionary dictionaryWithObjects:v141 forKeys:v140 count:1];
      v32 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:11 userInfo:v31];

      v33 = v32;
      v34 = 0;
      *a4 = v32;
    }

    else
    {
      v34 = 0;
    }

    goto LABEL_118;
  }

  if ([v9 majorVersion] != 1)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSConnectionHandoverHandler processHandoverRequestMessage:response:outError:]", 94, a1, @"CH major version not supported", v11, v12, v112);
    goto LABEL_14;
  }

  v115 = a4;
  v116 = a2;
  v117 = a3;
  v130 = *(a1 + 16);
  v13 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.sts"];
  v14 = [v13 stringForKey:@"DeviceEngagement"];
  v15 = [NSData STS_dataFromHexString:v14];
  if ([v15 length])
  {
    v16 = [v14 debugDescription];
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSConnectionHandoverHandler _generateDeviceEngagementRecord]", 956, a1, @"Device Engagement override: %@", v17, v18, v16);
  }

  v119 = v8;
  if ((*(a1 + 16) & 0x20) != 0)
  {
    v19 = sub_100031D24([UnifiedAccessDeviceEngagement alloc], &off_10005F848);
    if ([v15 length])
    {
      v35 = v15;
    }

    else
    {
      v35 = sub_100031DB0(NSData, v19);
    }

    v29 = *(a1 + 48);
    *(a1 + 48) = v35;
  }

  else
  {
    v19 = [[COSEKey alloc] initWithData:*(a1 + 32)];
    v20 = [ISODeviceEngagementNFC alloc];
    v21 = _os_feature_enabled_impl();
    v22 = @"1.0";
    if (v21)
    {
      v22 = @"1.1";
    }

    v23 = a1;
    v24 = v22;
    v25 = _os_feature_enabled_impl();
    v26 = &__NSArray0__struct;
    if (!v25)
    {
      v26 = 0;
    }

    v27 = v26;
    v28 = sub_100039E5C();
    v29 = sub_100031370(v20, v24, v19, 1, v27, v28);

    if ([v15 length])
    {
      v30 = v15;
    }

    else
    {
      v30 = sub_100031DB0(NSData, v29);
    }

    v36 = *(v23 + 48);
    *(v23 + 48) = v30;
    a1 = v23;
  }

  v37 = [NSData dataWithBytes:"iso.org:18013:deviceengagement" length:30];
  v38 = [NSData dataWithBytes:"mdoc" length:4];
  v39 = [[STSNDEFRecord alloc] initWithFormat:4 type:v37 identifier:v38 payload:*(a1 + 48)];

  if ((v130 & 6) != 0)
  {
    v40 = 1;
  }

  else
  {
    v40 = v130 & 1;
  }

  if (v40)
  {
    sub_100037C14(a1);
  }

  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v118 = v10;
  obj = [v10 alternativeCarriers];
  v41 = [obj countByEnumeratingWithState:&v132 objects:v139 count:16];
  v123 = a1;
  v125 = v39;
  if (!v41)
  {
    v124 = 0;
    LOBYTE(v43) = 0;
    LOBYTE(v44) = 0;
    v45 = 0;
    v131 = 0;
    v46 = 0;
    goto LABEL_88;
  }

  v42 = v41;
  v124 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v131 = 0;
  v46 = 0;
  v47 = *v133;
  do
  {
    for (i = 0; i != v42; i = i + 1)
    {
      if (*v133 != v47)
      {
        objc_enumerationMutation(obj);
      }

      v49 = *(*(&v132 + 1) + 8 * i);
      v50 = [v49 type];
      if (v43)
      {
        v51 = v43;
      }

      else
      {
        v51 = 1;
      }

      if (v50 == 2)
      {
        v43 = v51;
      }

      v52 = [v49 type];
      if (v44)
      {
        v53 = v44;
      }

      else
      {
        v53 = 1;
      }

      if (v52 == 1)
      {
        v44 = v53;
      }

      if ((v130 & 6) != 0 && !v46 && *(a1 + 96) == 1 && [v49 type] == 2)
      {
        v126 = v45;
        v54 = v49;
        v128 = v39;
        v55 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.sts"];
        if ([v55 BOOLForKey:@"ReaderBTDevEngagementRequestOverride"])
        {
          sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSConnectionHandoverHandler _matchBTCapabilityWithRequest:deviceEngagementRecord:]", 771, a1, @"Reader BT device engagement override enable", v56, v57, v112);
          LOBYTE(v58) = 1;
          LOBYTE(a1) = 1;
        }

        else
        {
          v60 = *(a1 + 16);
          v58 = (v60 >> 1) & 1;
          a1 = (v60 >> 2) & 1;
        }

        v61 = [v54 leRole];
        if ((v61 - 2) < 2)
        {
LABEL_61:
          if ((v58 & 1) == 0)
          {
            goto LABEL_68;
          }

          v64 = 0;
          v65 = 1;
          v121 = 1;
        }

        else
        {
          if (v61 != 1)
          {
            if (!v61)
            {
              goto LABEL_61;
            }

LABEL_68:
            a1 = v123;
            sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSConnectionHandoverHandler _matchBTCapabilityWithRequest:deviceEngagementRecord:]", 794, v123, @"Invalid BLE role", v62, v63, v112);
            v46 = 0;
LABEL_81:
            v39 = v125;

            if (v46)
            {
              v78 = [v54 leAddr];

              v124 = v78;
            }

            v45 = v126;
            continue;
          }

          if ((a1 & 1) == 0)
          {
            goto LABEL_68;
          }

          v65 = 0;
          v121 = 0;
          v64 = 1;
        }

        v66 = +[(ISO18013_3_Peripheral *)ReaderPeripheral];
        v122 = v66;
        if (v65)
        {
          v69 = [v54 advertiseUUID];
          v70 = [v69 length];

          if (v70 == 16)
          {
            v71 = [v54 advertiseUUID];
          }

          else
          {
            v71 = 0;
          }

          v72 = v122;
          a1 = v123;
          v73 = @"Central";
          if (!(v122 | v71))
          {
            sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSConnectionHandoverHandler _matchBTCapabilityWithRequest:deviceEngagementRecord:]", 806, v123, @"No valid advertise address nor UUID found", v67, v68, v112);
            v46 = 0;
LABEL_80:

            goto LABEL_81;
          }
        }

        else
        {
          v72 = v66;
          if (v64)
          {
            v71 = sub_100039DE0();
          }

          else
          {
            v71 = 0;
          }

          v73 = @"Peripheral";
          a1 = v123;
        }

        v120 = v55;
        sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSConnectionHandoverHandler _matchBTCapabilityWithRequest:deviceEngagementRecord:]", 814, a1, @"Role=%@, advertiseUUID: %@, advertiseAddress: %@", v67, v68, v73);
        v74 = [STSCHBluetoothAlternativeCarrier alloc];
        v75 = v72;
        v76 = v74;
        if (v125)
        {
          v141[0] = v128;
          v77 = [NSArray arrayWithObjects:v141 count:1];
          v46 = [(STSCHBluetoothAlternativeCarrier *)v76 initWithAddress:v75 advertiseUUID:v71 role:v121 powerState:1 auxiliaryRecords:v77];

          a1 = v123;
        }

        else
        {
          v46 = [(STSCHBluetoothAlternativeCarrier *)v74 initWithAddress:v75 advertiseUUID:v71 role:v121 powerState:1 auxiliaryRecords:&__NSArray0__struct];
        }

        v55 = v120;
        goto LABEL_80;
      }

      if ((v130 & 1) != 0 && !v131 && *(a1 + 88) == 1 && [v49 type] == 1)
      {
        v131 = sub_100037DD8(a1, v49, v39);
      }

      else if ((v130 & 0x20) != 0 && [v49 type] == 3)
      {
        v59 = sub_100037FEC(a1, v49, v39);

        v45 = v59;
      }
    }

    v42 = [obj countByEnumeratingWithState:&v132 objects:v139 count:16];
  }

  while (v42);
LABEL_88:

  if ((v130 & 0x20) != 0)
  {
    v80 = 0;
    v79 = v45;
LABEL_99:
    v81 = v79;
    goto LABEL_100;
  }

  if (v131)
  {
    v79 = v131;
  }

  else
  {
    v79 = v46;
  }

  if (v131)
  {
    v80 = 0;
  }

  else
  {
    v80 = -1;
  }

  if (v131 || v46)
  {
    goto LABEL_99;
  }

  v81 = 0;
  v80 = 0;
LABEL_100:
  v82 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.sts"];
  v83 = [v82 integerForKey:@"ACConfigOverride"];
  v127 = v45;
  if (v83 == 1 && v46)
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSConnectionHandoverHandler processHandoverRequestMessage:response:outError:]", 166, v123, @"Forcing Ble config", v84, v85, v112);
    v86 = v46;
    goto LABEL_106;
  }

  if (v83 != 2 || !v131)
  {
    if (v81)
    {
      goto LABEL_107;
    }

    v140[0] = NSLocalizedDescriptionKey;
    v141[0] = off_100069A70;
    v101 = [NSDictionary dictionaryWithObjects:v141 forKeys:v140 count:1];
    v102 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:6 userInfo:v101];

    if ((v44 & 1) != 0 && sub_1000382E0() && *(v123 + 88) == 2)
    {
      v142 = NSLocalizedDescriptionKey;
      v143 = off_100069B18;
      v105 = [NSDictionary dictionaryWithObjects:&v143 forKeys:&v142 count:1];
      v106 = [NSError errorWithDomain:@"WifiDomain" code:3 userInfo:v105];

      v107 = @"Wifi specific error";
    }

    else
    {
      if ((v43 & 1) == 0 || *(v123 + 96) != 2)
      {
        goto LABEL_131;
      }

      v142 = NSLocalizedDescriptionKey;
      v143 = STSBluetoothErrorDescriptions;
      v108 = [NSDictionary dictionaryWithObjects:&v143 forKeys:&v142 count:1];
      v106 = [NSError errorWithDomain:@"BluetoothDomain" code:0 userInfo:v108];

      v107 = @"Bluetooth specific error";
    }

    v140[0] = NSLocalizedDescriptionKey;
    v140[1] = NSUnderlyingErrorKey;
    v141[0] = v107;
    v141[1] = v106;
    v109 = [NSDictionary dictionaryWithObjects:v141 forKeys:v140 count:2];
    v110 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:12 userInfo:v109];

    v102 = v110;
LABEL_131:
    if (v115)
    {
      v111 = v102;
      *v115 = v102;
    }

    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSConnectionHandoverHandler processHandoverRequestMessage:response:outError:]", 183, v123, @"Unable to find a matching carrier, %@", v103, v104, v102);

    v81 = 0;
    v90 = &__NSArray0__struct;
    goto LABEL_108;
  }

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSConnectionHandoverHandler processHandoverRequestMessage:response:outError:]", 169, v123, @"Forcing Wifi config", v84, v85, v112);
  v86 = v131;
LABEL_106:
  v87 = v86;

  v81 = v87;
LABEL_107:
  v138 = v81;
  v90 = [NSArray arrayWithObjects:&v138 count:1];
LABEL_108:
  v113 = *(v123 + 88);
  v114 = *(v123 + 96);
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSConnectionHandoverHandler processHandoverRequestMessage:response:outError:]", 190, v123, @"Selected AC: %@, readerRequestedWifi=%d, readerRequestedBt=%d, wifiState=%lu, btState=%lu", v88, v89, v81);
  v91 = [v82 stringForKey:@"HandoverSelectOverride"];
  v92 = [NSData STS_dataFromHexString:v91];
  if ([v92 length])
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSConnectionHandoverHandler processHandoverRequestMessage:response:outError:]", 195, v123, @"Handover select override: %@", v93, v94, v91);
  }

  if (!v92)
  {
    v92 = [STSConnectionHandover selectWithAlternativeCarriers:v90 error:0];
  }

  if (v80)
  {
    [(STSCHBluetoothAlternativeCarrier *)v81 setLeAddr:v124];
  }

  objc_storeStrong((v123 + 56), v116);
  objc_storeStrong((v123 + 64), v92);
  v95 = v92;
  *v117 = v92;
  if (v43)
  {
    v96 = 2;
  }

  else
  {
    v96 = 0;
  }

  v136 = @"readerRequestedTransport";
  v97 = [NSNumber numberWithUnsignedInteger:v96 & 0xFFFFFFFFFFFFFFFELL | v44 & 1];
  v137 = v97;
  v98 = [NSDictionary dictionaryWithObjects:&v137 forKeys:&v136 count:1];

  v99 = +[STSAnalyticsLogger sharedCALogger];
  [v99 postISOHandoverEvent:v98 prepOnly:1];

  v34 = v81;
  v10 = v118;
  v8 = v119;
LABEL_118:

LABEL_119:

  return v34;
}

void sub_100037C14(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = a1[2] & 6;
  if ((a1[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (sub_1000382E0())
  {
    v3 = sub_100024AE0();
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WifiHWStateCheck", &unk_10005485E, buf, 2u);
    }

    a1[11] = sub_10002156C();
    v4 = sub_100024AE0();
    if (os_signpost_enabled(v4))
    {
      *v9 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WifiHWStateCheck", &unk_10005485E, v9, 2u);
    }

LABEL_9:
    if (!v2)
    {
      return;
    }

    goto LABEL_10;
  }

  a1[11] = 0;
  if (!v2)
  {
    return;
  }

LABEL_10:
  v5 = sub_100024AE0();
  if (os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "BleHWStateCheck", &unk_10005485E, v8, 2u);
  }

  a1[12] = sub_10000F780();
  v6 = sub_100024AE0();
  if (os_signpost_enabled(v6))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "BleHWStateCheck", &unk_10005485E, v7, 2u);
  }
}

STSCHWiFiAwareAlternativeCarrier *sub_100037DD8(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSConnectionHandoverHandler _matchWifiCapabilityWithSubscriber:deviceEngagementRecord:]", 890, a1, @"subscriber=%@", v7, v8, v6);
  v9 = sub_100008DD4();
  v10 = [v6 securityInfo];

  v11 = sub_10000A72C(v9, v10, 1);

  [v11 setCipherSuite:&off_10005F830];
  v12 = [STSDiffieHellmanParameter alloc];
  v13 = sub_1000090A0(v9);
  v14 = [(STSDiffieHellmanParameter *)v12 initWithKeyGroup:19 key:v13];

  v23 = v14;
  v15 = [NSArray arrayWithObjects:&v23 count:1];
  [v11 setDhInfo:v15];

  v16 = sub_100021610();
  v17 = [STSCHWiFiAwareAlternativeCarrier alloc];
  v18 = v17;
  if (v5)
  {
    v22 = v5;
    v19 = [NSArray arrayWithObjects:&v22 count:1];
    v20 = [(STSCHWiFiAwareAlternativeCarrier *)v18 initWithSecurityInfo:v11 discoveryChannelInfo:v16 powerState:1 auxiliaryRecords:v19];
  }

  else
  {
    v20 = [(STSCHWiFiAwareAlternativeCarrier *)v17 initWithSecurityInfo:v11 discoveryChannelInfo:v16 powerState:1 auxiliaryRecords:&__NSArray0__struct];
  }

  return v20;
}

STSCHNfcAlternativeCarrier *sub_100037FEC(_BYTE *a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  if ((a1[16] & 0x20) == 0)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSConnectionHandoverHandler _matchNfcReader:deviceEngagementRecord:]", 921, a1, @"NFC not supported", v6, v7, v28);
LABEL_23:
    v23 = 0;
    goto LABEL_28;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = [v5 auxiliaryRecords];
  v10 = [v9 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v29 = v8;
    v30 = v5;
    v12 = *v36;
    LOBYTE(v13) = 1;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        if ([v15 isISO18013ReaderEngagementRecord])
        {
          v16 = [v15 payload];
          v17 = sub_10001B0A0(UnifiedAccessReaderEngagement, v16);

          sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSConnectionHandoverHandler _matchNfcReader:deviceEngagementRecord:]", 931, a1, @"reader DE=%@", v18, v19, v17);
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v20 = [v17 cipherSuites];
          v13 = [v20 countByEnumeratingWithState:&v31 objects:v40 count:16];
          if (v13)
          {
            v21 = *v32;
            while (2)
            {
              for (j = 0; j != v13; j = j + 1)
              {
                if (*v32 != v21)
                {
                  objc_enumerationMutation(v20);
                }

                if ([*(*(&v31 + 1) + 8 * j) integerValue] == -10)
                {
                  LOBYTE(v13) = 1;
                  goto LABEL_19;
                }
              }

              v13 = [v20 countByEnumeratingWithState:&v31 objects:v40 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

LABEL_19:
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v11);

    v8 = v29;
    v5 = v30;
    if ((v13 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v24 = [STSCHNfcAlternativeCarrier alloc];
  v25 = v24;
  if (v8)
  {
    v39 = v8;
    v26 = [NSArray arrayWithObjects:&v39 count:1];
    v23 = [(STSCHNfcAlternativeCarrier *)v25 initWithMaxLcField:0 maxLeField:0 auxiliaryRecords:v26];
  }

  else
  {
    v23 = [(STSCHNfcAlternativeCarrier *)v24 initWithMaxLcField:0 maxLeField:0 auxiliaryRecords:&__NSArray0__struct];
  }

LABEL_28:

  return v23;
}

uint64_t sub_1000382E0()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    v1 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.sts"];
    v2 = [v1 BOOLForKey:@"EnableWifi"];

    return v2;
  }

  return result;
}

STSCHBluetoothAlternativeCarrier *sub_100038340(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  if (!a1)
  {
LABEL_87:
    v83 = 0;
    goto LABEL_116;
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    *a3 = [STSConnectionHandover selectWithAlternativeCarriers:&__NSArray0__struct error:0];
    if (a4)
    {
      v154[0] = NSLocalizedDescriptionKey;
      v155[0] = off_100069A50;
      v80 = [NSDictionary dictionaryWithObjects:v155 forKeys:v154 count:1];
      v81 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:2 userInfo:v80];

      v82 = v81;
      v83 = 0;
      *a4 = v81;
      goto LABEL_116;
    }

    goto LABEL_87;
  }

  v127 = a4;
  objc_storeStrong((a1 + 48), a2);
  v9 = sub_100031AAC(ISODeviceEngagementQRCode, v8);
  if (!v9)
  {
    *a3 = [STSConnectionHandover selectWithAlternativeCarriers:&__NSArray0__struct error:0];
    if (v127)
    {
      v154[0] = NSLocalizedDescriptionKey;
      v155[0] = off_100069AD0;
      v84 = [NSDictionary dictionaryWithObjects:v155 forKeys:v154 count:1];
      v85 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:18 userInfo:v84];

      v86 = v85;
      v83 = 0;
      *v127 = v85;
    }

    else
    {
      v83 = 0;
    }

    goto LABEL_115;
  }

  v125 = a3;
  v128 = v8;
  v129 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.sts"];
  if ([v129 BOOLForKey:@"LogDeviceEngagement"])
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSConnectionHandoverHandler processQRCodeHandoverRequestMessage:response:outError:]", 251, a1, @"[Type=QRCode] %@", v10, v11, v9);
  }

  v12 = [NSMutableArray alloc];
  v13 = v9[11];
  v137 = [v12 initWithCapacity:{objc_msgSend(v13, "count")}];

  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v126 = v9;
  v14 = v9[11];
  v15 = [v14 countByEnumeratingWithState:&v145 objects:v153 count:16];
  v134 = a1;
  if (v15)
  {
    v18 = v15;
    v19 = *v146;
    v20 = "[STSConnectionHandoverHandler processQRCodeHandoverRequestMessage:response:outError:]";
    v135 = v14;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v146 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v22 = *(*(&v145 + 1) + 8 * i);
        if (v22)
        {
          v23 = v22[1];
          switch(v23)
          {
            case 1:
              v39 = v20;
              v40 = 294;
              v41 = a1;
              v42 = @"NFC DeviceRetrievalMethod supplied. Not supported. Skipping.";
              goto LABEL_28;
            case 3:
              v39 = v20;
              v40 = 290;
              v41 = a1;
              v42 = @"WiFi DeviceRetrievalMethod supplied. Not supported. Skipping.";
LABEL_28:
              sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, v39, v40, v41, v42, v16, v17, v121);
              continue;
            case 2:
              v24 = v22;
              v25 = v24;
              v26 = *(v24 + 24);
              if ((v26 & 1) != 0 || *(v24 + 25))
              {
                v27 = 2;
                if ((v26 & *(v24 + 25)) == 0)
                {
                  v27 = 0;
                }

                v28 = v26 == 0;
                if (*(v24 + 24))
                {
                  v29 = v27;
                }

                else
                {
                  v29 = 1;
                }

                v139 = v29;
                v30 = &OBJC_IVAR___ISODeviceRetrievalMethodBLE__centralClientModeUUID;
                if (!v28)
                {
                  v30 = &OBJC_IVAR___ISODeviceRetrievalMethodBLE__peripheralServerModeUUID;
                }

                v31 = *(v24 + *v30);
                v122 = v25[6];
                sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, v20, 279, a1, @"BT advertiseUUID: %@, advertisePerihperhalAddress: %@", v32, v33, v31);

                v34 = [STSCHBluetoothAlternativeCarrier alloc];
                v35 = v25[6];
                [v31 STS_reverseBytes];
                v37 = v36 = v20;
                v38 = [(STSCHBluetoothAlternativeCarrier *)v34 initWithAddress:v35 advertiseUUID:v37 role:v139 powerState:1 auxiliaryRecords:&__NSArray0__struct];

                v20 = v36;
                a1 = v134;
                [v137 addObject:v38];

                v14 = v135;
              }

              break;
          }
        }
      }

      v18 = [v14 countByEnumeratingWithState:&v145 objects:v153 count:16];
    }

    while (v18);
  }

  v43 = v137;
  v44 = sub_1000390EC(a1, v128);
  sub_1000154E4(a1, v44);

  v45 = *(a1 + 16);
  v46 = v45 & 6;
  v136 = v45;
  v47 = v45 & 1;
  v140 = v47;
  if (v46)
  {
    LODWORD(v47) = 1;
  }

  if (v47)
  {
    sub_100037C14(a1);
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v48 = v43;
  v49 = [v48 countByEnumeratingWithState:&v141 objects:v152 count:16];
  v131 = v48;
  if (!v49)
  {
    v138 = 0;
    v79 = 0;
    v51 = 0;
    LOBYTE(v52) = 0;
    LOBYTE(v53) = 0;
    goto LABEL_91;
  }

  v50 = v49;
  v138 = 0;
  v133 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = *v142;
  do
  {
    for (j = 0; j != v50; j = j + 1)
    {
      if (*v142 != v54)
      {
        objc_enumerationMutation(v48);
      }

      v56 = *(*(&v141 + 1) + 8 * j);
      v57 = [v56 type];
      if (v53)
      {
        v58 = v53;
      }

      else
      {
        v58 = 1;
      }

      if (v57 == 2)
      {
        v53 = v58;
      }

      v59 = [v56 type];
      if (v52)
      {
        v60 = v52;
      }

      else
      {
        v60 = 1;
      }

      if (v59 == 1)
      {
        v52 = v60;
      }

      if (v46 && !v51 && *(a1 + 96) == 1 && [v56 type] == 2)
      {
        v61 = v56;
        v132 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.sts"];
        if ([v132 BOOLForKey:@"ReaderBTDevEngagementRequestOverride"])
        {
          sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSConnectionHandoverHandler _matchQRCodeBTCapabilityWithRequest:deviceEngagementRecord:]", 837, v134, @"Reader BT device engagement override enable", v62, v63, v121);
          LOBYTE(v64) = 1;
          LOBYTE(v65) = 1;
        }

        else
        {
          v67 = v134[2];
          v64 = (v67 >> 1) & 1;
          v65 = (v67 >> 2) & 1;
        }

        v68 = [v61 leRole];
        if (v68 > 1)
        {
          if (v68 == 3)
          {
            goto LABEL_75;
          }

          if (v68 != 2)
          {
            goto LABEL_78;
          }
        }

        else if (v68)
        {
          if (v68 != 1)
          {
LABEL_78:
            sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSConnectionHandoverHandler _matchQRCodeBTCapabilityWithRequest:deviceEngagementRecord:]", 858, v134, @"Invalid BLE role", v69, v70, v121);
            v51 = 0;
LABEL_81:

            a1 = v134;
            v48 = v131;
            continue;
          }

LABEL_75:
          if ((v65 & 1) == 0)
          {
            goto LABEL_78;
          }

          v76 = [v61 advertiseUUID];
          v130 = 0;
          v77 = @"Peripheral";
LABEL_77:
          v78 = v134;
          goto LABEL_80;
        }

        if ((v64 & 1) == 0)
        {
          goto LABEL_78;
        }

        v71 = [v61 advertiseUUID];
        v72 = [v71 length];

        if (v72 == 16)
        {
          v75 = [v61 advertiseUUID];
          if (v75)
          {
            v76 = v75;
            v130 = 1;
            v77 = @"Central";
            goto LABEL_77;
          }
        }

        v78 = v134;
        sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSConnectionHandoverHandler _matchQRCodeBTCapabilityWithRequest:deviceEngagementRecord:]", 870, v134, @"No valid advertise address nor UUID found", v73, v74, v121);
        v76 = 0;
        v130 = 1;
        v77 = @"Central";
LABEL_80:
        sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSConnectionHandoverHandler _matchQRCodeBTCapabilityWithRequest:deviceEngagementRecord:]", 877, v78, @"Role=%@, advertiseUUID: %@, advertiseAddress: %@", v73, v74, v77);
        v51 = [[STSCHBluetoothAlternativeCarrier alloc] initWithAddress:0 advertiseUUID:v76 role:v130 powerState:1 auxiliaryRecords:&__NSArray0__struct];

        goto LABEL_81;
      }

      if (v140 && !v138 && *(a1 + 88) == 1 && [v56 type] == 1)
      {
        v138 = sub_100037DD8(a1, v56, 0);
      }

      else if ((v136 & 0x20) != 0 && [v56 type] == 3)
      {
        v66 = sub_100037FEC(a1, v56, 0);

        v133 = v66;
      }
    }

    v50 = [v48 countByEnumeratingWithState:&v141 objects:v152 count:16];
  }

  while (v50);
  v79 = v133;
LABEL_91:

  v87 = v79;
  if ((v136 & 0x20) != 0 || (!v138 ? (v87 = v51) : (v87 = v138), v138 || v51))
  {
    v88 = v87;
  }

  else
  {
    v88 = 0;
  }

  v89 = [v129 integerForKey:@"ACConfigOverride"];
  if (v89 == 1 && v51)
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSConnectionHandoverHandler processQRCodeHandoverRequestMessage:response:outError:]", 367, a1, @"Forcing Ble config", v90, v91, v121);
    v92 = v51;
    goto LABEL_105;
  }

  if (v89 != 2 || !v138)
  {
    if (v88)
    {
      goto LABEL_106;
    }

    v154[0] = NSLocalizedDescriptionKey;
    v155[0] = off_100069A70;
    v110 = [NSDictionary dictionaryWithObjects:v155 forKeys:v154 count:1];
    v111 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:6 userInfo:v110];

    if ((v52 & 1) != 0 && sub_1000382E0() && *(a1 + 88) == 2)
    {
      v156 = NSLocalizedDescriptionKey;
      v157 = off_100069B18;
      v114 = [NSDictionary dictionaryWithObjects:&v157 forKeys:&v156 count:1];
      v115 = [NSError errorWithDomain:@"WifiDomain" code:3 userInfo:v114];

      v116 = @"Wifi specific error";
    }

    else
    {
      if ((v53 & 1) == 0 || *(a1 + 96) != 2)
      {
        v119 = v127;
        v97 = v111;
        goto LABEL_130;
      }

      v156 = NSLocalizedDescriptionKey;
      v157 = STSBluetoothErrorDescriptions;
      v117 = [NSDictionary dictionaryWithObjects:&v157 forKeys:&v156 count:1];
      v115 = [NSError errorWithDomain:@"BluetoothDomain" code:0 userInfo:v117];

      v116 = @"Bluetooth specific error";
    }

    v154[0] = NSLocalizedDescriptionKey;
    v154[1] = NSUnderlyingErrorKey;
    v155[0] = v116;
    v155[1] = v115;
    v118 = [NSDictionary dictionaryWithObjects:v155 forKeys:v154 count:2];
    v97 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:12 userInfo:v118];

    a1 = v134;
    v119 = v127;
LABEL_130:
    if (v119)
    {
      v120 = v97;
      *v119 = v97;
    }

    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSConnectionHandoverHandler processQRCodeHandoverRequestMessage:response:outError:]", 384, a1, @"Unable to find a matching carrier, %@", v112, v113, v97);
    v88 = 0;
    v96 = &__NSArray0__struct;
    goto LABEL_107;
  }

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSConnectionHandoverHandler processQRCodeHandoverRequestMessage:response:outError:]", 370, a1, @"Forcing Wifi config", v90, v91, v121);
  v92 = v138;
LABEL_105:
  v93 = v92;

  v88 = v93;
LABEL_106:
  v151 = v88;
  v96 = [NSArray arrayWithObjects:&v151 count:1];
  v97 = 0;
LABEL_107:
  v123 = *(a1 + 88);
  v124 = *(a1 + 96);
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSConnectionHandoverHandler processQRCodeHandoverRequestMessage:response:outError:]", 391, a1, @"Selected AC: %@, readerRequestedWifi=%d, readerRequestedBt=%d, wifiState=%lu, btState=%lu", v94, v95, v88);
  v98 = [v129 stringForKey:@"HandoverSelectOverride"];
  [NSData STS_dataFromHexString:v98];
  v100 = v99 = a1;
  if ([v100 length])
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSConnectionHandoverHandler processQRCodeHandoverRequestMessage:response:outError:]", 396, v99, @"Handover select override: %@", v101, v102, v98);
  }

  if (!v100)
  {
    v100 = [STSConnectionHandover selectWithAlternativeCarriers:v96 error:0];
  }

  v103 = v100;
  *v125 = v100;
  if (v53)
  {
    v104 = 2;
  }

  else
  {
    v104 = 0;
  }

  v149 = @"readerRequestedTransport";
  v105 = [NSNumber numberWithUnsignedInteger:v104 & 0xFFFFFFFFFFFFFFFELL | v52 & 1];
  v150 = v105;
  [NSDictionary dictionaryWithObjects:&v150 forKeys:&v149 count:1];
  v107 = v106 = v96;

  v108 = +[STSAnalyticsLogger sharedCALogger];
  [v108 postISOHandoverEvent:v107 prepOnly:1];

  v83 = v88;
  v8 = v128;
  v9 = v126;
LABEL_115:

LABEL_116:

  return v83;
}

id sub_1000390EC(_BYTE *a1, void *a2)
{
  v3 = a2;
  if (a1[8])
  {
    sub_100031AAC(ISODeviceEngagementQRCode, v3);
  }

  else
  {
    sub_10003130C(ISODeviceEngagementNFC, v3);
  }
  v4 = ;
  sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSConnectionHandoverHandler _extractDeviceKeyFromDeviceEngagement:outError:]", 1075, a1, @"Device Engagement: %@", v5, v6, v4);
  v7 = sub_100030E50(v4);
  v8 = sub_10000A080(v7);
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSConnectionHandoverHandler _extractDeviceKeyFromDeviceEngagement:outError:]", 1077, a1, @"coseKey=%@", v9, v10, v8);

  v11 = [NSData dataWithCOSEKey:v7];
  v12 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.sts"];
  if ([v12 BOOLForKey:@"debug.log-crypto-params"] && os_variant_has_internal_ui())
  {
    v28 = v12;
    v30 = v7;
    v31 = v4;
    v32 = v3;
    v13 = [v11 length];
    v14 = [v11 bytes];
    v29 = v11;
    [v11 length];
    sub_100024A04(OS_LOG_TYPE_INFO, 0, "[STSConnectionHandoverHandler _extractDeviceKeyFromDeviceEngagement:outError:]", 1083, "%s %lu bytes", v15, v16, v17, "deviceKey=");
    if (v13)
    {
      v18 = 0;
      do
      {
        v19 = 0;
        v20 = &v33[__sprintf_chk(v33, 0, 0x30uLL, "%04lX: ", v18)];
        do
        {
          v21 = v19 + 1;
          v22 = v19 + 1 + v18;
          v23 = sprintf(v20, "0x%02X ", v14[v18 + v19]);
          if (v19 > 6)
          {
            break;
          }

          v20 += v23;
          ++v19;
        }

        while (v22 < v13);
        sub_100024A04(OS_LOG_TYPE_INFO, 0, "[STSConnectionHandoverHandler _extractDeviceKeyFromDeviceEngagement:outError:]", 1083, "%s", v24, v25, v26, v33);
        v18 += v21;
      }

      while (v22 < v13);
    }

    v4 = v31;
    v3 = v32;
    v11 = v29;
    v7 = v30;
    v12 = v28;
  }

  return v11;
}

id sub_100039394(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v39 = 0;
    goto LABEL_80;
  }

  v9 = a1;
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSConnectionHandoverHandler generateHandoverRequest:]", 418, a1, @"configuration=0x%lx", a7, a8, a1[2]);
  v10 = sub_100008DD4();
  objc_storeStrong(v9 + 10, v10);

  v11 = v9[2];
  LODWORD(v10) = (v11 & 0x20) == 0;
  v14 = objc_opt_new();
  v15 = *(v9 + 4);
  v16 = v15 & v10;
  v17 = v10 & (v15 >> 1);
  v18 = v10 & (v15 >> 2);
  if ((v18 & 1) != 0 || (v16 & 1) != 0 || v17)
  {
    sub_100037C14(v9);
  }

  v98 = v9;
  if (v16 && sub_1000382E0() && v9[11] == 1)
  {
    v19 = [STSDiffieHellmanParameter alloc];
    sub_1000090A0(v9[10]);
    v21 = v20 = v14;
    v22 = [(STSDiffieHellmanParameter *)v19 initWithKeyGroup:19 key:v21];

    v23 = [STSCHWiFiAwareSecurityInfo alloc];
    v99 = v22;
    v24 = [NSArray arrayWithObjects:&v99 count:1];
    v25 = [(STSCHWiFiAwareSecurityInfo *)v23 initWithCipherSuites:&off_10005F818 dhInfo:v24 passphrase:0];

    v26 = sub_100021610();
    v27 = [[STSCHWiFiAwareAlternativeCarrier alloc] initWithSecurityInfo:v25 discoveryChannelInfo:v26 powerState:1 auxiliaryRecords:&__NSArray0__struct];
    [v20 addObject:v27];

    v14 = v20;
    v9 = v98;
  }

  if ((v17 | v18) == 1 && v9[12] == 1)
  {
    v30 = +[(ISO18013_3_Peripheral *)ReaderPeripheral];
    if ((v17 & v18) == 1)
    {
      v31 = v14;
      v32 = 2;
      v33 = sub_100039DE0();
    }

    else if (v17)
    {
      v34 = *(v9 + 8);
      v31 = v14;
      if (v34 == 1)
      {
        v33 = sub_100039DE0();

        v30 = 0;
      }

      else
      {
        v33 = 0;
      }

      v32 = 1;
    }

    else
    {
      v31 = v14;
      v33 = sub_100039DE0();
      v32 = 0;
    }

    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSConnectionHandoverHandler generateHandoverRequest:]", 480, v98, @"BT advertiseUUID: %@, advertisePerihperhalAddress: %@", v28, v29, v33);
    v35 = [[STSCHBluetoothAlternativeCarrier alloc] initWithAddress:v30 advertiseUUID:v33 role:v32 powerState:1 auxiliaryRecords:&__NSArray0__struct];
    v14 = v31;
    v9 = v98;
    [v14 addObject:v35];
  }

  if ((v9[2] & 0x10) != 0)
  {
    if ((v11 & 0x20) == 0)
    {
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSConnectionHandoverHandler generateHandoverRequest:]", 494, v9, @"Not implemented", v12, v13, v88);
      if (a2)
      {
        *&v103 = NSLocalizedDescriptionKey;
        v102[0] = off_100069A68;
        v36 = [NSDictionary dictionaryWithObjects:v102 forKeys:&v103 count:1];
        v37 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:5 userInfo:v36];

        v38 = v37;
        v39 = 0;
        *a2 = v37;
      }

      else
      {
        v39 = 0;
      }

      goto LABEL_79;
    }

    v40 = [[STSCHNfcAlternativeCarrier alloc] initWithMaxLcField:4096 maxLeField:4096 auxiliaryRecords:&__NSArray0__struct];
    [v14 addObject:v40];
  }

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSConnectionHandoverHandler generateHandoverRequest:]", 505, v9, @"Generated AC list: %@", v12, v13, v14);
  if (![v14 count])
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSConnectionHandoverHandler generateHandoverRequest:]", 507, v9, @"No available AC", v41, v42, v89);
    if (v16 && sub_1000382E0())
    {
      if (a2)
      {
        v78 = v14;
        v79 = NSLocalizedDescriptionKey;
        v100 = NSLocalizedDescriptionKey;
        v101 = off_100069B18;
        v80 = [NSDictionary dictionaryWithObjects:&v101 forKeys:&v100 count:1];
        v81 = [NSError errorWithDomain:@"WifiDomain" code:3 userInfo:v80];

        v82 = @"Wifi specific error";
LABEL_76:
        *&v103 = v79;
        *(&v103 + 1) = NSUnderlyingErrorKey;
        v102[0] = v82;
        v102[1] = v81;
        v84 = [NSDictionary dictionaryWithObjects:v102 forKeys:&v103 count:2];
        v85 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:12 userInfo:v84];

        v86 = v85;
        *a2 = v85;
        v14 = v78;
      }
    }

    else if (a2)
    {
      v78 = v14;
      v79 = NSLocalizedDescriptionKey;
      v100 = NSLocalizedDescriptionKey;
      v101 = STSBluetoothErrorDescriptions;
      v83 = [NSDictionary dictionaryWithObjects:&v101 forKeys:&v100 count:1];
      v81 = [NSError errorWithDomain:@"BluetoothDomain" code:0 userInfo:v83];

      v82 = @"Bluetooth specific error";
      goto LABEL_76;
    }

    v39 = objc_alloc_init(NSData);
    goto LABEL_79;
  }

  v43 = [v14 copy];
  objc_storeStrong(v9 + 9, v43);

  v44 = [STSConnectionHandover requestWithAlternativeCarriers:v9[9]];
  objc_storeStrong(v9 + 7, v44);
  if (*(v9 + 8) != 1)
  {
    v39 = v44;
    goto LABEL_73;
  }

  v90 = v44;
  v91 = v14;
  v97 = objc_opt_new();
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v45 = v9[9];
  v46 = [v45 countByEnumeratingWithState:&v103 objects:v102 count:16];
  if (!v46)
  {
    goto LABEL_63;
  }

  v47 = v46;
  v48 = *v104;
  v49 = 1;
  v96 = v45;
  do
  {
    for (i = 0; i != v47; i = i + 1)
    {
      if (*v104 != v48)
      {
        objc_enumerationMutation(v45);
      }

      v51 = *(*(&v103 + 1) + 8 * i);
      v52 = [v51 type];
      if (v52 == 1)
      {
        v57 = 557;
        v58 = v9;
        v59 = @"WiFi DeviceRetrievalMethod supplied. Not supported. Skipping.";
        goto LABEL_43;
      }

      if (v52 == 3)
      {
        v57 = 561;
        v58 = v9;
        v59 = @"NFC DeviceRetrievalMethod supplied. Not supported. Skipping.";
LABEL_43:
        sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSConnectionHandoverHandler generateQRCodeHandoverRequest:]", v57, v58, v59, v53, v54, v89);
        continue;
      }

      if (v52 != 2)
      {
        continue;
      }

      if (v49)
      {
        sub_100037C14(v9);
      }

      v55 = v51;
      v56 = ![v55 leRole] || objc_msgSend(v55, "leRole") == 2 || objc_msgSend(v55, "leRole") == 3;
      v60 = [v55 leRole] == 1 || objc_msgSend(v55, "leRole") == 2 || objc_msgSend(v55, "leRole") == 3;
      v61 = [ISODeviceRetrievalMethodBLE alloc];
      if (v56)
      {
        v94 = [v55 advertiseUUID];
        v62 = [v94 STS_reverseBytes];
        v93 = v62;
        if (!v60)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v62 = 0;
        if (!v60)
        {
LABEL_51:
          v63 = 0;
          if (v56)
          {
            goto LABEL_55;
          }

          goto LABEL_52;
        }
      }

      v95 = [v55 advertiseUUID];
      v63 = [v95 STS_reverseBytes];
      v92 = v63;
      if (v56)
      {
LABEL_55:
        v65 = [v55 leAddr];
        v64 = sub_100031658(v61, 1, v60, v62, v63, v65);

        goto LABEL_56;
      }

LABEL_52:
      v64 = sub_100031658(v61, 0, v60, v62, v63, 0);
LABEL_56:
      v9 = v98;
      if (v60)
      {
      }

      if (v56)
      {
      }

      [v97 addObject:v64];

      v49 = 0;
      v45 = v96;
    }

    v47 = [v45 countByEnumeratingWithState:&v103 objects:v102 count:16];
  }

  while (v47);
LABEL_63:

  v66 = [[COSEKey alloc] initWithData:v9[4]];
  v67 = [ISODeviceEngagementQRCode alloc];
  v68 = _os_feature_enabled_impl();
  v69 = @"1.0";
  if (v68)
  {
    v69 = @"1.1";
  }

  v70 = v69;
  v71 = _os_feature_enabled_impl();
  v72 = &__NSArray0__struct;
  if (!v71)
  {
    v72 = 0;
  }

  v73 = v72;
  v74 = sub_100039E5C();
  v75 = sub_100031B10(v67, v70, v66, 1, v97, v73, v74);

  v39 = sub_100031DB0(NSData, v75);
  objc_storeStrong(v9 + 6, v39);
  v76 = v9[7];
  v9[7] = 0;

  v77 = v9[8];
  v9[8] = 0;

  v44 = v90;
  v14 = v91;
LABEL_73:

LABEL_79:
LABEL_80:

  return v39;
}

id sub_100039DE0()
{
  arc4random_buf(__buf, 0x10uLL);
  v0 = [NSData dataWithBytes:__buf length:16];

  return v0;
}

_BYTE *sub_100039E5C()
{
  if (_os_feature_enabled_impl())
  {
    v0 = sub_100032A7C([ISODeviceEngagementCapabilities alloc], 0, 1, 1);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

id *sub_100039EBC(id *a1, void *a2, void *a3)
{
  v6 = a2;
  if (a1)
  {
    v7 = [STSConnectionHandover connectionHandoverWithData:v6];
    v10 = v7;
    if (v7 && ([v7 alternativeCarriers], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v12))
    {
      if ([v10 majorVersion] == 1)
      {
        sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSConnectionHandoverHandler processHandoverSelectMessage:outError:]", 598, a1, &stru_100059C08, v8, v9, v72);
        obj = a1[2];
        v13 = [v10 alternativeCarriers];
        v14 = [v13 count];

        if (v14 != 1)
        {
          sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSConnectionHandoverHandler processHandoverSelectMessage:outError:]", 605, a1, @"More than 1 AC found; force using 1st one in list", v15, v16, v73);
        }

        v17 = [v10 alternativeCarriers];
        v18 = [v17 firstObject];

        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v78 = v18;
        v19 = [v78 auxiliaryRecords];
        v20 = [v19 countByEnumeratingWithState:&v85 objects:v84 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v86;
          while (2)
          {
            for (i = 0; i != v21; i = i + 1)
            {
              if (*v86 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v85 + 1) + 8 * i);
              if ([v24 isISO18013DeviceEngagementRecord])
              {
                v34 = [v24 payload];
                v35 = [v34 debugDescription];
                sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSConnectionHandoverHandler _extractDeviceEngagmentFromAlternativeCarrier:outError:]", 1061, a1, @"deviceEngagement=%@", v36, v37, v35);

                v28 = [v24 payload];

                v26 = 0;
                goto LABEL_22;
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v85 objects:v84 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

        v89 = NSLocalizedDescriptionKey;
        v90 = off_100069AA8;
        v25 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
        v26 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:13 userInfo:v25];

        v27 = v26;
        v28 = 0;
LABEL_22:

        v38 = v26;
        objc_storeStrong(a1 + 6, v28);

        if (v38)
        {
          if (a3)
          {
            v39 = v38;
            a1 = 0;
            *a3 = v38;
          }

          else
          {
            a1 = 0;
          }

          goto LABEL_48;
        }

        v40 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.sts"];
        if ([v40 BOOLForKey:@"LogDeviceEngagement"])
        {
          v41 = a1[6];
          if ((obj & 0x20) != 0)
          {
            v42 = sub_100031D4C(UnifiedAccessDeviceEngagement, v41);
            sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSConnectionHandoverHandler processHandoverSelectMessage:outError:]", 621, a1, @"[Type=UA] %@", v43, v44, v42);

LABEL_30:
            if ([v78 type] != 3)
            {
              goto LABEL_44;
            }

            v47 = v78;
            goto LABEL_41;
          }

          v48 = sub_10003130C(ISODeviceEngagementNFC, v41);
          sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSConnectionHandoverHandler processHandoverSelectMessage:outError:]", 624, a1, @"[Type=NFC] %@", v49, v50, v48);
        }

        else if ((obj & 0x20) != 0)
        {
          goto LABEL_30;
        }

        v51 = a1[6];
        v52 = sub_1000390EC(a1, v51);

        objc_storeStrong(a1 + 4, v52);
        if (a1[12] == 1 && (obj & 0x20) == 0 && [v78 type] == 2)
        {
          v53 = v78;
          v54 = [v53 advertiseUUID];
          v55 = [v54 length];

          if (v55 == 16)
          {
            v56 = [v53 advertiseUUID];
            sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSConnectionHandoverHandler processHandoverSelectMessage:outError:]", 639, a1, @"Remote advertise UUID: %@", v57, v58, v56);
          }

          else
          {
            v74 = v53;
            v75 = v40;
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            obja = a1[9];
            v63 = [obja countByEnumeratingWithState:&v79 objects:v83 count:16];
            if (v63)
            {
              v64 = v63;
              v65 = *v80;
              while (2)
              {
                for (j = 0; j != v64; j = j + 1)
                {
                  if (*v80 != v65)
                  {
                    objc_enumerationMutation(obja);
                  }

                  v67 = *(*(&v79 + 1) + 8 * j);
                  if ([v67 type] == 2)
                  {
                    v68 = [v67 advertiseUUID];
                    v53 = v74;
                    [v74 setAdvertiseUUID:v68];

                    v69 = [v74 advertiseUUID];
                    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSConnectionHandoverHandler processHandoverSelectMessage:outError:]", 644, a1, @"Peripheral advertise UUID: %@", v70, v71, v69);

                    v40 = v75;
                    goto LABEL_42;
                  }
                }

                v64 = [obja countByEnumeratingWithState:&v79 objects:v83 count:16];
                if (v64)
                {
                  continue;
                }

                break;
              }
            }

            v53 = v74;
            v40 = v75;
          }

LABEL_42:
          if (v53)
          {
            objc_storeStrong(a1 + 8, a2);
LABEL_47:
            a1 = v53;

            v38 = 0;
LABEL_48:

LABEL_49:
            goto LABEL_50;
          }

LABEL_44:
          sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSConnectionHandoverHandler processHandoverSelectMessage:outError:]", 657, a1, @"Unable to find suitable AC from CH select", v45, v46, v73);
          if (a3)
          {
            *&v85 = NSLocalizedDescriptionKey;
            v84[0] = off_100069A90;
            v59 = [NSDictionary dictionaryWithObjects:v84 forKeys:&v85 count:1];
            v60 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:10 userInfo:v59];

            v61 = v60;
            v53 = 0;
            *a3 = v60;
          }

          else
          {
            v53 = 0;
          }

          goto LABEL_47;
        }

        if (a1[11] != 1 || [v78 type] != 1)
        {
          goto LABEL_44;
        }

        v47 = sub_10003A6A0(a1, v78);
LABEL_41:
        v53 = v47;
        goto LABEL_42;
      }

      v29 = @"No valid CH version found";
      v30 = 593;
    }

    else
    {
      v29 = @"No valid CH Select message found";
      v30 = 587;
    }

    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSConnectionHandoverHandler processHandoverSelectMessage:outError:]", v30, a1, v29, v8, v9, v72);
    if (a3)
    {
      *&v85 = NSLocalizedDescriptionKey;
      v84[0] = off_100069A80;
      v31 = [NSDictionary dictionaryWithObjects:v84 forKeys:&v85 count:1];
      v32 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:8 userInfo:v31];

      v33 = v32;
      a1 = 0;
      *a3 = v32;
    }

    else
    {
      a1 = 0;
    }

    goto LABEL_49;
  }

LABEL_50:

  return a1;
}

STSCHWiFiAwareAlternativeCarrier *sub_10003A6A0(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 securityInfo];
  v5 = [v4 cipherSuite];
  v6 = [v5 count];
  v7 = [v3 securityInfo];
  v8 = [v7 dhInfo];
  v9 = [v8 count];

  if (v6 != v9)
  {
    v23 = @"# of cipher suites does not match with DH info count";
    v24 = OS_LOG_TYPE_ERROR;
    v25 = 1022;
LABEL_19:
    sub_10002483C(v24, 0, "[STSConnectionHandoverHandler _matchWifiCapabilityWithPublisher:]", v25, a1, v23, v10, v11, v47);
    v36 = 0;
    goto LABEL_20;
  }

  v12 = [v3 securityInfo];
  v13 = [v12 cipherSuite];
  v14 = [v13 count];

  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = 0;
  while (1)
  {
    v16 = [v3 securityInfo];
    v17 = [v16 cipherSuite];
    v18 = [v17 objectAtIndexedSubscript:v15];
    v19 = [v18 integerValue];

    if (v19 == 3)
    {
      break;
    }

    ++v15;
    v20 = [v3 securityInfo];
    v21 = [v20 cipherSuite];
    v22 = [v21 count];

    if (v15 >= v22)
    {
      goto LABEL_18;
    }
  }

  v26 = [v3 securityInfo];
  v27 = [v26 dhInfo];
  v28 = [v27 objectAtIndexedSubscript:v15];

  if (!v28)
  {
LABEL_18:
    v23 = @"Cannot find valid wifi security info";
    v24 = OS_LOG_TYPE_DEFAULT;
    v25 = 1034;
    goto LABEL_19;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v29 = a1[9];
  v30 = [v29 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v48;
    while (2)
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v48 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v47 + 1) + 8 * i);
        if ([v34 type] == 1)
        {
          v38 = a1[10];
          v39 = v34;
          v40 = [v3 securityInfo];
          v41 = sub_10000A72C(v38, v40, 0);

          v42 = [STSCHWiFiAwareAlternativeCarrier alloc];
          v43 = [v3 discoveryChannelInfo];
          v44 = [v39 powerState];
          v45 = [v39 auxiliaryRecords];

          v35 = [(STSCHWiFiAwareAlternativeCarrier *)v42 initWithSecurityInfo:v41 discoveryChannelInfo:v43 powerState:v44 auxiliaryRecords:v45];
          goto LABEL_24;
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

  v35 = 0;
LABEL_24:

  v46 = a1[10];
  a1[10] = 0;

  v36 = v35;
LABEL_20:

  return v36;
}

id *sub_10003AA34(id *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v4 = [a1[4] encodeToBstrCbor];
    v5 = [v4 base64EncodedStringWithOptions:0];
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSConnectionHandoverHandler generateBTIdentCharacteristic:]", 673, v2, @"devKeyBytes=%@", v6, v7, v5);

    v8 = [@"BLEIdent" dataUsingEncoding:4];
    v15 = 0;
    v9 = sub_100009B7C(ISOKey, v4, 0, v8, 0, 16, &v15);
    v10 = v15;

    if (v10)
    {
      if (a2)
      {
        v13 = v10;
        v2 = 0;
        *a2 = v10;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSConnectionHandoverHandler generateBTIdentCharacteristic:]", 684, v2, @"BLE Ident=%@", v11, v12, v9);
      v2 = v9;
    }
  }

  return v2;
}

id sub_10003AB90(id *a1, void *a2)
{
  if (a1)
  {
    v4 = [a1[4] encodeToBstrCbor];
    v5 = [@"NANService" dataUsingEncoding:4];
    v13 = 0;
    v6 = sub_100009B7C(ISOKey, v4, 0, v5, 0, 16, &v13);
    v7 = v13;

    if (v7)
    {
      if (a2)
      {
        v8 = v7;
        v9 = 0;
        *a2 = v7;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = [v6 STS_asHexString];
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSConnectionHandoverHandler generateWifiNANServiceName:]", 709, a1, @"serviceName=%@", v10, v11, v9);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_10003B838(double a1)
{
  if (!atomic_load(&dword_100069B94))
  {
    sub_10003B9B4(a1);
  }
}

void sub_10003B85C(double a1)
{
  if (!atomic_load(&dword_100069B94))
  {
    sub_10003B9B4(a1);
  }
}

void sub_10003B880(double a1)
{
  if (!atomic_load(&dword_100069B90))
  {
    sub_10003B910(a1);
  }
}

void sub_10003B8A4(double a1)
{
  if (!atomic_load(&dword_100069B90))
  {
    sub_10003B910(a1);
  }
}

void sub_10003B8C8(double a1)
{
  if (!atomic_load(&dword_100069B90))
  {
    sub_10003B910(a1);
  }
}

void sub_10003B8EC(double a1)
{
  if (!atomic_load(&dword_100069B90))
  {
    sub_10003B910(a1);
  }
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10003B910(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/CoreIDCred.framework/CoreIDCred", 0);
  atomic_store(1u, &dword_100069B90);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10003B9B4(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/CoreIDCredBuilder.framework/CoreIDCredBuilder", 0);
  atomic_store(1u, &dword_100069B94);
  return a1;
}