@interface RPNWFramer
+ (BOOL)writeDataOnFramer:(id)framer data:(id)data;
+ (const)controlCodeToString:(int)string;
+ (void)setupDaemonFramer:(id)framer token:(id)token receiveHandler:(id)handler closeHandler:(id)closeHandler;
+ (void)startConnection:(id)connection token:(id)token;
@end

@implementation RPNWFramer

+ (const)controlCodeToString:(int)string
{
  if (string > 3)
  {
    return "INVALID";
  }

  else
  {
    return off_1E7C93138[string];
  }
}

void __52__RPNWFramer_writeControlOnFramer_type_error_token___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  nw_framer_write_output(*(a1 + 32), (a1 + 48), 0x10uLL);
  if (*(a1 + 68))
  {
    if (gLogCategory_RPNWFramer > 30 || gLogCategory_RPNWFramer == -1 && !_LogCategory_Initialize())
    {
      return;
    }

    __52__RPNWFramer_writeControlOnFramer_type_error_token___block_invoke_cold_1(a1, (a1 + 68), v2, &v4);
  }

  else
  {
    if (gLogCategory_RPNWFramer > 30 || gLogCategory_RPNWFramer == -1 && !_LogCategory_Initialize())
    {
      return;
    }

    __52__RPNWFramer_writeControlOnFramer_type_error_token___block_invoke_cold_2(a1, v2, &v4);
  }

  v3 = v4;
}

+ (BOOL)writeDataOnFramer:(id)framer data:(id)data
{
  framerCopy = framer;
  dataCopy = data;
  v7 = dataCopy;
  if (framerCopy)
  {
    v8 = dataCopy == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    if (gLogCategory_RPNWFramer <= 30 && (gLogCategory_RPNWFramer != -1 || _LogCategory_Initialize()))
    {
      +[RPNWFramer writeDataOnFramer:data:];
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __37__RPNWFramer_writeDataOnFramer_data___block_invoke;
    v11[3] = &unk_1E7C92D80;
    v12 = v7;
    v13 = framerCopy;
    nw_framer_async(v13, v11);
  }

  return v9;
}

void __37__RPNWFramer_writeDataOnFramer_data___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) length];
  v3 = [*(a1 + 32) bytes];
  v4[0] = 0;
  v4[1] = v2;
  nw_framer_write_output(*(a1 + 40), v4, 0x10uLL);
  if (gLogCategory_RPNWFramer <= 30 && (gLogCategory_RPNWFramer != -1 || _LogCategory_Initialize()))
  {
    __37__RPNWFramer_writeDataOnFramer_data___block_invoke_cold_1();
  }

  nw_framer_write_output(*(a1 + 40), v3, v2);
  if (gLogCategory_RPNWFramer <= 30 && (gLogCategory_RPNWFramer != -1 || _LogCategory_Initialize()))
  {
    __37__RPNWFramer_writeDataOnFramer_data___block_invoke_cold_2();
  }
}

+ (void)startConnection:(id)connection token:(id)token
{
  connectionCopy = connection;
  tokenCopy = token;
  if (gLogCategory_RPNWFramer <= 30 && (gLogCategory_RPNWFramer != -1 || _LogCategory_Initialize()))
  {
    +[RPNWFramer startConnection:token:];
  }

  [RPNWFramer writeControlOnFramer:connectionCopy type:1 error:0 token:tokenCopy];
}

+ (void)setupDaemonFramer:(id)framer token:(id)token receiveHandler:(id)handler closeHandler:(id)closeHandler
{
  framerCopy = framer;
  tokenCopy = token;
  handlerCopy = handler;
  closeHandlerCopy = closeHandler;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  input_handler[0] = MEMORY[0x1E69E9820];
  input_handler[1] = 3221225472;
  input_handler[2] = __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke;
  input_handler[3] = &unk_1E7C93048;
  v22 = v28;
  v23 = v25;
  v24 = v27;
  v13 = handlerCopy;
  v20 = v13;
  v14 = tokenCopy;
  v18 = v14;
  v15 = closeHandlerCopy;
  v21 = v15;
  v16 = framerCopy;
  v19 = v16;
  nw_framer_set_input_handler(v16, input_handler);
  nw_framer_set_output_handler(v16, &__block_literal_global_1);
  nw_framer_set_cleanup_handler(v16, &__block_literal_global_34);

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v28, 8);
}

uint64_t __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  while (1)
  {
    do
    {
      v7 = *(a1 + 64);
      if (*(*(v7 + 8) + 24))
      {
        break;
      }

      v27 = 0;
      v28 = &v27;
      v29 = 0x3010000000;
      v30 = "";
      v31 = 0;
      v32 = 0;
      parse[0] = MEMORY[0x1E69E9820];
      parse[1] = 3221225472;
      parse[2] = __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_2;
      parse[3] = &unk_1E7C92FF8;
      v26 = 16;
      parse[4] = &v27;
      parse[5] = v7;
      v25 = *(a1 + 72);
      if (!nw_framer_parse_input(v6, 0x10uLL, 0x10uLL, 0, parse))
      {
        _Block_object_dispose(&v27, 8);
        v14 = 16;
        goto LABEL_36;
      }

      if (gLogCategory_RPNWFramer <= 40 && (gLogCategory_RPNWFramer != -1 || _LogCategory_Initialize()))
      {
        v8 = [RPNWFramer controlCodeToString:*(*(*(a1 + 72) + 8) + 24), v16, v17, v18, v19];
        v9 = *(v28 + 33);
        v18 = strerror(*(v28 + 33));
        v19 = *(*(*(a1 + 80) + 8) + 24);
        v16 = v8;
        v17 = v9;
        LogPrintF();
      }

      _Block_object_dispose(&v27, 8);
    }

    while ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0);
    if (*(*(*(a1 + 72) + 8) + 24))
    {
      if (*(*(*(a1 + 72) + 8) + 24) == 3)
      {
        if (gLogCategory_RPNWFramer <= 40 && (gLogCategory_RPNWFramer != -1 || _LogCategory_Initialize()))
        {
          __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_cold_1(a1);
        }
      }

      else
      {
        if (gLogCategory_RPNWFramer <= 90 && (gLogCategory_RPNWFramer != -1 || _LogCategory_Initialize()))
        {
          __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_cold_5(a1);
        }

        nw_framer_mark_failed_with_error(*(a1 + 40), 57);
      }

      (*(*(a1 + 56) + 16))(*(a1 + 56), v3, v4, v5);
      goto LABEL_35;
    }

    if (!*(*(*(a1 + 80) + 8) + 24))
    {
      break;
    }

    if (gLogCategory_RPNWFramer <= 40 && (gLogCategory_RPNWFramer != -1 || _LogCategory_Initialize()))
    {
      __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_cold_2();
    }

    v10 = *(a1 + 80);
    v11 = *(*(v10 + 8) + 24);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_3;
    v20[3] = &unk_1E7C93020;
    v22 = v10;
    v12 = *(a1 + 48);
    v13 = *(a1 + 64);
    v21 = v12;
    v23 = v13;
    if (!nw_framer_parse_input(v6, 1uLL, v11, 0, v20))
    {
      if (gLogCategory_RPNWFramer <= 40 && (gLogCategory_RPNWFramer != -1 || _LogCategory_Initialize()))
      {
        __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_cold_3();
      }

LABEL_35:
      v14 = 0;
      goto LABEL_36;
    }
  }

  if (gLogCategory_RPNWFramer <= 40 && (gLogCategory_RPNWFramer != -1 || _LogCategory_Initialize()))
  {
    __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_cold_4();
  }

  v14 = 0;
  *(*(*(a1 + 64) + 8) + 24) = 0;
LABEL_36:

  return v14;
}

uint64_t __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_2(void *a1, _OWORD *a2, unint64_t a3)
{
  if (!a2 || a1[8] > a3)
  {
    return 0;
  }

  *(*(a1[4] + 8) + 32) = *a2;
  *(*(a1[5] + 8) + 24) = 1;
  *(*(a1[6] + 8) + 24) = *(*(a1[4] + 8) + 32);
  *(*(a1[7] + 8) + 24) = *(*(a1[4] + 8) + 40);
  return a1[8];
}

unint64_t __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_3(void *a1, uint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a3;
  if (*(*(a1[5] + 8) + 24) <= a3)
  {
    if (gLogCategory_RPNWFramer <= 40 && (gLogCategory_RPNWFramer != -1 || _LogCategory_Initialize()))
    {
      __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_3_cold_1();
    }

    (*(a1[4] + 16))();
    *(*(a1[5] + 8) + 24) = 0;
    *(*(a1[6] + 8) + 24) = 0;
  }

  else
  {
    if (gLogCategory_RPNWFramer <= 40 && (gLogCategory_RPNWFramer != -1 || _LogCategory_Initialize()))
    {
      __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_3_cold_2();
    }

    (*(a1[4] + 16))();
    *(*(a1[5] + 8) + 24) -= v3;
  }

  return v3;
}

void __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (gLogCategory_RPNWFramer <= 90 && (gLogCategory_RPNWFramer != -1 || _LogCategory_Initialize()))
  {
    __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_4_cold_1();
  }
}

void __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_RPNWFramer <= 30)
  {
    v5 = v2;
    if (gLogCategory_RPNWFramer != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_5_cold_1();
      v3 = v5;
    }
  }
}

+ (uint64_t)writeControlOnFramer:(unsigned __int8)a3 type:error:token:.cold.1(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  [RPNWFramer controlCodeToString:a2];
  strerror(a3);
  return LogPrintF();
}

uint64_t __52__RPNWFramer_writeControlOnFramer_type_error_token___block_invoke_cold_1(uint64_t a1, unsigned __int8 *a2, void **a3, void *a4)
{
  if (*(a1 + 40))
  {
    v7 = *(a1 + 40);
  }

  [RPNWFramer controlCodeToString:*(a1 + 64)];
  strerror(*a2);
  v8 = *a3;
  v9 = MEMORY[0x1E696AD60];
  v10 = v8;
  v11 = objc_alloc_init(v9);
  *a4 = v11;
  [v11 appendFormat:@"%p", v10];

  return LogPrintF();
}

uint64_t __52__RPNWFramer_writeControlOnFramer_type_error_token___block_invoke_cold_2(uint64_t a1, void **a2, void *a3)
{
  if (*(a1 + 40))
  {
    v5 = *(a1 + 40);
  }

  [RPNWFramer controlCodeToString:*(a1 + 64)];
  v6 = *a2;
  v7 = MEMORY[0x1E696AD60];
  v8 = v6;
  v9 = objc_alloc_init(v7);
  *a3 = v9;
  [v9 appendFormat:@"%p", v8];

  return LogPrintF();
}

@end