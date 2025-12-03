@interface DYGLGuestAppClient
- (BOOL)_canTriggerCaptureOnNextGraphicsCommand;
- (BOOL)armCaptureWithDescriptor:(id)descriptor;
- (BOOL)startCaptureWithDescriptor:(id)descriptor;
- (id)_copyContextsInfo;
- (void)_appendLinkTimeLibrariesToVersionsDictionary:(id)dictionary;
- (void)_appendToAllCaptureDataSentMessagePayload:(id)payload;
- (void)_armCaptureWithTransportMessage:(id)message;
- (void)_handleTurnOnCapture;
- (void)_populateQueueAndThreadLabelMaps;
- (void)_waitForGraphicsThreads;
- (void)processMessage:(id)message;
- (void)sendContextInfoUpdate;
- (void)setTraceMode:(int)mode;
@end

@implementation DYGLGuestAppClient

- (void)setTraceMode:(int)mode
{
  v8.receiver = self;
  v8.super_class = DYGLGuestAppClient;
  [(DYGLGuestAppClient *)&v8 setTraceMode:?];
  v5 = choose_dispatch_table();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __35__DYGLGuestAppClient_setTraceMode___block_invoke;
  v6[3] = &unk_20CF78;
  v7 = ((mode & 0xFFFFFFFE) == 4) & gCheckGLErrors;
  v6[4] = self;
  v6[5] = v5;
  iter_contexts(v6);
  handle_trace_mode_transition_platform();
}

void __35__DYGLGuestAppClient_setTraceMode___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    clear_errors(a2);
  }

  if (*(*(a1 + 32) + 201) == 1)
  {
    clear_driver_events(a2);
  }

  install_dispatch_table(*a2, *(a1 + 40));
  *(a2 + 4837) = [*(a1 + 32) traceMode] == 5;
  std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::clear(a2 + 3480);

  std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::clear(a2 + 3520);
}

- (id)_copyContextsInfo
{
  v2 = objc_opt_new();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __39__DYGLGuestAppClient__copyContextsInfo__block_invoke;
  v4[3] = &unk_20CDC8;
  v4[4] = v2;
  iter_contexts(v4);
  return v2;
}

- (void)processMessage:(id)message
{
  kind = [message kind];
  if (kind > 1027)
  {
    if (kind <= 1541)
    {
      if (kind == 1028)
      {

        UpdateResourceObject(message);
      }

      else
      {
        if (kind != 1029)
        {
          goto LABEL_67;
        }

        ClearResourceOverrides(message);
      }
    }

    else
    {
      switch(kind)
      {
        case 1794:
          [(DYGLGuestAppClient *)self lockGraphicsAndWaitForThreads:1];
          v19 = OBJC_IVAR___DYGuestAppClient__overrideFlags;
          v20 = *&self->DYGuestAppClient_opaque[OBJC_IVAR___DYGuestAppClient__overrideFlags] & 0x100;
          v38 = v20;
          if ([message BOOLForKey:kDYOverridesForceOneByOneScissor])
          {
            v20 |= 4u;
            v38 = v20;
          }

          if ([message BOOLForKey:kDYOverridesForceTwoByTwoTextures])
          {
            v20 |= 0x20u;
            v38 = v20;
          }

          if ([message BOOLForKey:kDYOverridesDisableAllDrawCommands])
          {
            v20 |= 8u;
            v38 = v20;
          }

          if ([message BOOLForKey:kDYOverridesDisableAllGLCommands])
          {
            v20 |= 0x10u;
            v38 = v20;
          }

          v21 = [message uint32ForKey:kDYOverridesFlagsKey];
          if (*&self->DYGuestAppClient_opaque[OBJC_IVAR___DYGuestAppClient__xcodeOverrideFlags] != v21)
          {
            v38 = (v21 << 19) & 0x300000 | (32 * (v21 & 1)) | (v21 >> 1) & 8 | v20 & 0x1D7;
            *&self->DYGuestAppClient_opaque[OBJC_IVAR___DYGuestAppClient__xcodeOverrideFlags] = v21;
          }

          update_overrides(message, &v38);
          *&self->DYGuestAppClient_opaque[v19] = v38;
          [(DYGLGuestAppClient *)self unlockGraphics];
          break;
        case 1793:
          [(DYGLGuestAppClient *)self lockGraphicsAndWaitForThreads:1];
          v23 = [objc_msgSend(message attributeForKey:{kDYTraceModeKey), "unsignedIntValue"}];
          if (v23 == 5)
          {
            v30 = dy_abort();
            [(DYGLGuestAppClient *)v30 sendContextInfoUpdate];
          }

          else
          {
            v24 = v23;
            self->_includeBacktraceInFbufs = [message BOOLForKey:kDYTraceIncludeBacktracesKey];
            self->_queryDriverEventsOnGraphicsCommands = [message BOOLForKey:kDYTraceIncludeDriverEventsKey];
            gProfilingSendPeriod = [message uint64ForKey:kDYTraceProfilingSendPeriodKey];
            v25 = [message uint64ForKey:kDYTraceProfilingFlagsKey];
            gProfilingFlags = 0;
            enable_profiling_flag(v25);
            self->_checkGLErrors = [message BOOLForKey:kDYTraceCheckGLErrorsKey];
            v26 = [message BOOLForKey:kDYTraceTrapOnGLErrorsKey];
            gTrapOnGLError = v26;
            checkGLErrors = 1;
            if ((gBreakOnError & 1) == 0 && (v26 & 1) == 0)
            {
              checkGLErrors = self->_checkGLErrors;
            }

            gCheckGLErrors = checkGLErrors;
            v28 = [message attributeForKey:kDYTraceProfilingHardwareCountersConfigurationKey];
            v29 = v28;
            if (v28 && ![v28 objectForKey:kDYProfilingHardwareCountersConfigurationTypeKey])
            {
              [DYGLGuestAppClient processMessage:];
            }

            set_hardware_counters_configuration(v29);
            if ([(DYGLGuestAppClient *)self traceMode]== 5)
            {
              [(DYGLGuestAppClient *)self setPreviousTraceMode:v24];
            }

            else
            {
              [(DYGLGuestAppClient *)self setTraceMode:v24];
            }

            [(DYGLGuestAppClient *)self unlockGraphics];
          }

          break;
        case 1542:
          _copyContextsInfo = [(DYGLGuestAppClient *)self _copyContextsInfo];
          [(DYGLGuestAppClient *)self sendMessage:[DYTransportMessage messageWithKind:1542 objectPayload:?], message];

          break;
        default:
          goto LABEL_67;
      }
    }
  }

  else
  {
    if (kind > 1024)
    {
      if (kind == 1025)
      {

        HarvestResourceNames(message);
      }

      else if (kind == 1026)
      {
        attributes = [message attributes];

        HarvestResourceObject(attributes);
      }

      else
      {

        HarvestState(message);
      }

      return;
    }

    if (kind != 512)
    {
      if (kind == 513)
      {

        breakpoint_continue();
        return;
      }

LABEL_67:
      v33.receiver = self;
      v33.super_class = DYGLGuestAppClient;
      [(DYGLGuestAppClient *)&v33 processMessage:message];
      return;
    }

    GPUTools::DYLockUtils::Lock(&breakpoint_flags_write_lock, v6);
    bzero(breakpoint_flags, 0x46EuLL);
    GPUTools::DYLockUtils::Unlock(&breakpoint_flags_write_lock, v7);
    __dmb(0xBu);
    objectPayload = [message objectPayload];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v9 = [objectPayload countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v35;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(objectPayload);
          }

          v13 = *(*(&v34 + 1) + 8 * i);
          breakBefore = [v13 breakBefore];
          if ([v13 breakAfter])
          {
            breakBefore |= 2u;
          }

          if ([v13 noExec])
          {
            breakBefore |= 4u;
          }

          [v13 fenum];
          unified_index = dy_fenum_get_unified_index();
          GPUTools::DYLockUtils::Lock(&breakpoint_flags_write_lock, v16);
          breakpoint_flags[unified_index] = breakBefore;
          GPUTools::DYLockUtils::Unlock(&breakpoint_flags_write_lock, v17);
          __dmb(0xBu);
        }

        v10 = [objectPayload countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v10);
    }

    gBreakOnError = [objc_msgSend(message attributeForKey:{kDYBreakpointBreakOnGLErrorsKey), "BOOLValue"}];
    v18 = (gBreakOnError & 1) != 0 || (gTrapOnGLError & 1) != 0 || self->_checkGLErrors;
    gCheckGLErrors = v18;
    __dmb(0xBu);
  }
}

- (void)sendContextInfoUpdate
{
  _copyContextsInfo = [(DYGLGuestAppClient *)self _copyContextsInfo];
  [(DYGLGuestAppClient *)self sendMessage:[DYTransportMessage messageWithKind:1542 objectPayload:_copyContextsInfo]];
}

- (void)_populateQueueAndThreadLabelMaps
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __54__DYGLGuestAppClient__populateQueueAndThreadLabelMaps__block_invoke;
  v2[3] = &unk_20CDC8;
  v2[4] = self;
  iter_contexts(v2);
}

void *__54__DYGLGuestAppClient__populateQueueAndThreadLabelMaps__block_invoke(void *result, uint64_t a2)
{
  v3 = OBJC_IVAR___DYGuestAppClient__activeCaptureState;
  v4 = *(result[4] + OBJC_IVAR___DYGuestAppClient__activeCaptureState);
  v5 = *(a2 + 3496);
  if (v5)
  {
    v6 = result;
    v7 = OBJC_IVAR___DYCaptureState__dispatchQueueLabelMap;
    do
    {
      result = std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::__emplace_unique_key_args<void const*,std::pair<void const* const,std::string> const&>((v4 + v7), v5 + 2);
      v5 = *v5;
    }

    while (v5);
    v4 = *(v6[4] + v3);
  }

  v8 = *(a2 + 3536);
  if (v8)
  {
    v9 = OBJC_IVAR___DYCaptureState__threadLabelMap;
    do
    {
      result = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,std::string> const&>((v4 + v9), v8 + 2);
      v8 = *v8;
    }

    while (v8);
  }

  return result;
}

- (void)_waitForGraphicsThreads
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v2 = &v4;
  do
  {
    v2[6] = 0;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = __45__DYGLGuestAppClient__waitForGraphicsThreads__block_invoke;
    v3[3] = &unk_20CDF0;
    v3[4] = &v4;
    iter_contexts(v3);
    if (v5[6] < 1)
    {
      break;
    }

    usleep(0xAu);
    __dmb(0xBu);
    v2 = v5;
  }

  while (v5[6] > 0);
  _Block_object_dispose(&v4, 8);
}

- (void)_appendToAllCaptureDataSentMessagePayload:(id)payload
{
  _copyContextsInfo = [(DYGLGuestAppClient *)self _copyContextsInfo];
  [payload setObject:_copyContextsInfo forKey:@"contexts info"];
}

- (void)_appendLinkTimeLibrariesToVersionsDictionary:(id)dictionary
{
  for (i = 0; i != 2; ++i)
  {
    [(DYGLGuestAppClient *)self _appendLinkTimeLibrary:[DYGLGuestAppClient _appendLinkTimeLibrariesToVersionsDictionary:]::libraries[i] toVersionsDictionary:dictionary];
  }
}

- (BOOL)_canTriggerCaptureOnNextGraphicsCommand
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __61__DYGLGuestAppClient__canTriggerCaptureOnNextGraphicsCommand__block_invoke;
  v4[3] = &unk_20CDF0;
  v4[4] = &v5;
  iter_contexts(v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __61__DYGLGuestAppClient__canTriggerCaptureOnNextGraphicsCommand__block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (*(a2 + 4839) == 1)
  {
    *(*(*(result + 32) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

- (void)_handleTurnOnCapture
{
  if ([*&self->DYGuestAppClient_opaque[OBJC_IVAR___DYGuestAppClient__activeCaptureDescriptor] triggerFrame])
  {

    harvest_contexts(0, 1);
  }
}

- (void)_armCaptureWithTransportMessage:(id)message
{
  if (!*&self->DYGuestAppClient_opaque[OBJC_IVAR___DYGuestAppClient__state])
  {
    plistPayload = [message plistPayload];
    v6 = objc_alloc_init(DYGLESCaptureDescriptor);
    -[DYGLESCaptureDescriptor setSessionId:](v6, "setSessionId:", [objc_msgSend(plistPayload objectForKey:{@"Serial", "unsignedIntValue"}]);
    if (![(DYGLESCaptureDescriptor *)v6 sessionId])
    {
      [DYGLGuestAppClient _armCaptureWithTransportMessage:];
    }

    sessionId = [(DYGLESCaptureDescriptor *)v6 sessionId];
    *&self->DYGuestAppClient_opaque[OBJC_IVAR___DYGuestAppClient__lastSessionSerial] = sessionId;
    -[DYGLESCaptureDescriptor setFramesToCapture:](v6, "setFramesToCapture:", [objc_msgSend(plistPayload objectForKey:{@"FrameLimit", "unsignedLongLongValue"}]);
    -[DYGLESCaptureDescriptor setTriggerFrame:](v6, "setTriggerFrame:", [objc_msgSend(plistPayload objectForKey:{@"TriggerFrame", "unsignedLongLongValue"}]);
    -[DYGLESCaptureDescriptor setSuspendAfterCapture:](v6, "setSuspendAfterCapture:", [objc_msgSend(plistPayload objectForKey:{@"SuspendAfterCompletion", "BOOLValue"}]);
    -[DYGLESCaptureDescriptor setLockGraphicsAfterCapture:](v6, "setLockGraphicsAfterCapture:", [objc_msgSend(plistPayload objectForKey:{@"LockOpenGLAfterCompletion", "BOOLValue"}]);
    [(DYGLGuestAppClient *)self armCaptureWithDescriptor:v6];
  }
}

- (BOOL)armCaptureWithDescriptor:(id)descriptor
{
  if (descriptor)
  {
    v3 = *&self->DYGuestAppClient_opaque[OBJC_IVAR___DYGuestAppClient__state] == 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if (v3)
  {
    descriptorCopy = descriptor;
    v7 = OBJC_IVAR___DYGuestAppClient__activeCaptureDescriptor;
    *&self->DYGuestAppClient_opaque[OBJC_IVAR___DYGuestAppClient__activeCaptureDescriptor] = descriptorCopy;
    v8 = objc_alloc_init(DYGLESCaptureState);
    *&self->DYGuestAppClient_opaque[OBJC_IVAR___DYGuestAppClient__activeCaptureState] = v8;
    [*&self->DYGuestAppClient_opaque[v7] setIncludeBacktraceInFbufs:self->_includeBacktraceInFbufs];
    [*&self->DYGuestAppClient_opaque[v7] setQueryDriverEventsOnGraphicsCommands:self->_queryDriverEventsOnGraphicsCommands];
    v10.receiver = self;
    v10.super_class = DYGLGuestAppClient;
    [(DYGLGuestAppClient *)&v10 _armCapture];
  }

  return v4;
}

- (BOOL)startCaptureWithDescriptor:(id)descriptor
{
  if (*&self->DYGuestAppClient_opaque[OBJC_IVAR___DYGuestAppClient__traceMode] != 1)
  {
    return 0;
  }

  v11 = v3;
  v12 = v4;
  result = 0;
  if (descriptor)
  {
    if (!*&self->DYGuestAppClient_opaque[OBJC_IVAR___DYGuestAppClient__state])
    {
      descriptorCopy = descriptor;
      v8 = OBJC_IVAR___DYGuestAppClient__activeCaptureDescriptor;
      *&self->DYGuestAppClient_opaque[OBJC_IVAR___DYGuestAppClient__activeCaptureDescriptor] = descriptorCopy;
      v9 = objc_alloc_init(DYGLESCaptureState);
      *&self->DYGuestAppClient_opaque[OBJC_IVAR___DYGuestAppClient__activeCaptureState] = v9;
      [*&self->DYGuestAppClient_opaque[v8] setIncludeBacktraceInFbufs:self->_includeBacktraceInFbufs];
      v10.receiver = self;
      v10.super_class = DYGLGuestAppClient;
      [(DYGLGuestAppClient *)&v10 _startCapture];
      return 1;
    }
  }

  return result;
}

@end