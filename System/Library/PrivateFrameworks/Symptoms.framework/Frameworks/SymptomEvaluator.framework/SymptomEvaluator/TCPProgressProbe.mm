@interface TCPProgressProbe
+ (id)probeForInterface:(id)interface;
+ (id)progressPrettyPrintUtility:(nstat_progress_indicators *)utility;
+ (void)initialize;
- (BOOL)interfaceMappingIsCurrent;
- (BOOL)manage:(unsigned int)manage outValue:(unsigned int *)value;
- (id)_initForInterface:(id)interface;
- (id)description;
- (void)dealloc;
- (void)fetchMetricsForFlowsAged:(double)aged metrics:(nstat_progress_indicators *)metrics includeQUICFlows:(BOOL)flows resultBlock:(id)block;
@end

@implementation TCPProgressProbe

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"TCPProgressProbe (%s, index %llu, include local flows %d)", self->interfaceName, self->_interfaceIndex, self->_localFlowTracking];

  return v2;
}

- (void)dealloc
{
  interfaceName = self->interfaceName;
  if (interfaceName)
  {
    free(interfaceName);
    self->interfaceName = 0;
  }

  v4.receiver = self;
  v4.super_class = TCPProgressProbe;
  [(TCPProgressProbe *)&v4 dealloc];
}

+ (void)initialize
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = registry;
  registry = v2;

  MEMORY[0x2821F96F8](v2, v3);
}

+ (id)probeForInterface:(id)interface
{
  v38 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  if ([interfaceCopy length])
  {
    obj = registry;
    objc_sync_enter(obj);
    array = [MEMORY[0x277CBEB18] array];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v4 = registry;
    v5 = [v4 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v5)
    {
      v6 = *v29;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v29 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v28 + 1) + 8 * i);
          v9 = [registry objectForKeyedSubscript:{v8, obj}];
          v10 = v9;
          if (v9 && ([v9 interfaceMappingIsCurrent] & 1) == 0)
          {
            v11 = rnfLogHandle;
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              interfaceIndex = [v10 interfaceIndex];
              *buf = 138412546;
              v34 = v8;
              v35 = 2048;
              v36 = interfaceIndex;
              _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "TCPPP: Remove obsolete mapping for ifname %@ to interface %llu", buf, 0x16u);
            }

            [array addObject:v8];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v5);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = array;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v14)
    {
      v15 = *v25;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v13);
          }

          [registry removeObjectForKey:{*(*(&v24 + 1) + 8 * j), obj}];
        }

        v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v14);
    }

    v17 = [registry objectForKeyedSubscript:interfaceCopy];
    if (!v17)
    {
      v17 = [[TCPProgressProbe alloc] _initForInterface:interfaceCopy];
      if (v17)
      {
        [registry setObject:v17 forKeyedSubscript:interfaceCopy];
      }

      else
      {
        v19 = rnfLogHandle;
        if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v34 = interfaceCopy;
          _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "TCPPP: Failure to allocate probe for ifName: %@", buf, 0xCu);
        }

        v17 = 0;
      }
    }

    objc_sync_exit(obj);
  }

  else
  {
    v18 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_INFO, "TCPPP: Nil ifName", buf, 2u);
    }

    v17 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)progressPrettyPrintUtility:(nstat_progress_indicators *)utility
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = *&utility->var6;
  v6 = [v4 initWithFormat:@"allflows=%d/C=%d/R=%d/W=%d/flows=%d/unacked=%d/rxbytes=%lld/txbytes=%lld/rxooo=%lld/rxdup=%lld/retx=%lld", utility->var0, utility->var1, utility->var2, utility->var3, utility->var4, utility->var5, utility->var6, utility->var7, utility->var8, utility->var9, utility->var10];

  return v6;
}

- (id)_initForInterface:(id)interface
{
  interfaceCopy = interface;
  v12.receiver = self;
  v12.super_class = TCPProgressProbe;
  v5 = [(TCPProgressProbe *)&v12 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v7 = dispatch_queue_create("com.apple.symptoms.tcpprogress.queue", v6);
    lqueue = v5->lqueue;
    v5->lqueue = v7;

    uTF8String = [interfaceCopy UTF8String];
    if (!uTF8String)
    {
      [WiFiTriggerHandler getHandlerByName:?];
    }

    v10 = strdup(uTF8String);
    if (!v10)
    {
      [WiFiTriggerHandler getHandlerByName:?];
    }

    v5->interfaceName = v10;
    v5->_interfaceIndex = if_nametoindex(v10);
  }

  return v5;
}

- (BOOL)manage:(unsigned int)manage outValue:(unsigned int *)value
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  lqueue = self->lqueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__TCPProgressProbe_manage_outValue___block_invoke;
  v7[3] = &unk_27898F2D8;
  manageCopy = manage;
  v7[4] = self;
  v7[5] = &v9;
  v7[6] = value;
  dispatch_sync(lqueue, v7);
  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __36__TCPProgressProbe_manage_outValue___block_invoke(uint64_t a1)
{
  v72 = *MEMORY[0x277D85DE8];
  v70 = 0u;
  v71 = 0u;
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  if (v2 == *(v3 + 24))
  {
    if (v2 == 1)
    {
      ++*(v3 + 32);
      v31 = rnfLogHandle;
      if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
LABEL_32:
        *(*(*(a1 + 40) + 8) + 24) = 1;
        goto LABEL_33;
      }

      v32 = *(a1 + 32);
      v33 = *(v32 + 32);
      *buf = 134218240;
      v65 = v32;
      v66 = 2048;
      v67 = v33;
      v6 = "TCPPP: %p requesting ModePremium and already in ModePremium, incremented reference count to %lu";
      v7 = v31;
      v8 = 22;
    }

    else
    {
      if (v2)
      {
        goto LABEL_32;
      }

      v4 = rnfLogHandle;
      if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      v5 = *(a1 + 32);
      *buf = 134217984;
      v65 = v5;
      v6 = "TCPPP: %p requesting ModeDefault and already in ModeDefault, no-op";
      v7 = v4;
      v8 = 12;
    }

    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    goto LABEL_32;
  }

  v9 = socket(2, 2, 0);
  if (v9 < 0)
  {
    v29 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      v30 = *(a1 + 32);
      *buf = 134217984;
      v65 = v30;
      v26 = "TCPPP: %p Unable to open a socket for ioctl to kernel";
      v27 = v29;
      v28 = 12;
LABEL_28:
      _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
    }
  }

  else
  {
    v10 = v9;
    v11 = *(a1 + 32);
    v12 = v11[2];
    if (v12 && *v12)
    {
      v70 = 0u;
      v71 = 0u;
      v13 = v11[2];
      if (!v13)
      {
        __36__TCPProgressProbe_manage_outValue___block_invoke_cold_1(buf);
      }

      v14 = 0;
      while (1)
      {
        v15 = *(v13 + v14);
        *(&v70 + v14) = v15;
        if (!v15)
        {
          break;
        }

        if (++v14 == 15)
        {
          HIBYTE(v70) = 0;
          break;
        }
      }

      v16 = *(a1 + 56);
      if (v16 != 2)
      {
        if (v16 == 1)
        {
          if (v11[4])
          {
            goto LABEL_60;
          }

          LODWORD(v71) = 1;
          if (ioctl(v10, 0xC02069ABuLL, &v70))
          {
            v35 = rnfLogHandle;
            if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
            {
              v36 = *(a1 + 32);
              v37 = *(v36 + 16);
              v20 = v35;
              v38 = *__error();
              *buf = 134218498;
              v65 = v36;
              v66 = 2080;
              v67 = v37;
              v68 = 1024;
              LODWORD(v69) = v38;
              v22 = "TCPPP: %p ioctl failure to notify kernel of change to ModePremium on interface %s, errno %d";
              goto LABEL_41;
            }

LABEL_60:
            close(v10);
            goto LABEL_33;
          }

          ++*(*(a1 + 32) + 32);
          v49 = rnfLogHandle;
          if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_58;
          }

          v56 = *(a1 + 32);
          v57 = *(v56 + 16);
          v58 = *(v56 + 32);
          *buf = 134218498;
          v65 = v56;
          v66 = 2080;
          v67 = v57;
          v68 = 2048;
          v69 = v58;
          v53 = "TCPPP: %p ioctl sets ModePremium for interface %s, incremented reference count to %lu";
        }

        else
        {
          if (v16)
          {
            v43 = rnfLogHandle;
            if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_60;
            }

            v44 = *(a1 + 32);
            v45 = *(a1 + 56);
            *buf = 134218240;
            v65 = v44;
            v66 = 1024;
            LODWORD(v67) = v45;
            v46 = "TCPPP: %p kernel probing state: invalid command: %d";
            v47 = v43;
            v48 = 18;
            goto LABEL_44;
          }

          if (v11[4] == 1)
          {
            if ([v11 interfaceMappingIsCurrent])
            {
              LODWORD(v71) = 0;
              if (ioctl(v10, 0xC02069ABuLL, &v70))
              {
                v17 = rnfLogHandle;
                if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
                {
                  v18 = *(a1 + 32);
                  v19 = *(v18 + 16);
                  v20 = v17;
                  v21 = *__error();
                  *buf = 134218498;
                  v65 = v18;
                  v66 = 2080;
                  v67 = v19;
                  v68 = 1024;
                  LODWORD(v69) = v21;
                  v22 = "TCPPP: %p ioctl failure to notify kernel of change to ModeDefault on interface %s, errno %d";
LABEL_41:
                  _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, v22, buf, 0x1Cu);

                  goto LABEL_60;
                }

                goto LABEL_60;
              }

              --*(*(a1 + 32) + 32);
              v49 = rnfLogHandle;
              if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_58;
              }

              v61 = *(a1 + 32);
              v62 = *(v61 + 16);
              v63 = *(v61 + 32);
              *buf = 134218498;
              v65 = v61;
              v66 = 2080;
              v67 = v62;
              v68 = 2048;
              v69 = v63;
              v53 = "TCPPP: %p ioctl sets ModeDefault for interface %s, decremented reference count to %lu";
              goto LABEL_57;
            }

            v55 = rnfLogHandle;
            if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_60;
            }

            *buf = 0;
            v46 = "TCPPP: interface name is no longer current, no-op";
            v47 = v55;
            v48 = 2;
LABEL_44:
            _os_log_impl(&dword_23255B000, v47, OS_LOG_TYPE_ERROR, v46, buf, v48);
            goto LABEL_60;
          }

          --v11[4];
          v49 = rnfLogHandle;
          if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
          {
LABEL_58:
            *(*(a1 + 32) + 24) = *(a1 + 56);
            goto LABEL_59;
          }

          v50 = *(a1 + 32);
          v51 = *(v50 + 16);
          v52 = *(v50 + 32);
          *buf = 134218498;
          v65 = v50;
          v66 = 2080;
          v67 = v51;
          v68 = 2048;
          v69 = v52;
          v53 = "TCPPP: %p requesting ModeDefault for interface %s, decremented reference count to %lu";
        }

LABEL_57:
        _os_log_impl(&dword_23255B000, v49, OS_LOG_TYPE_DEFAULT, v53, buf, 0x20u);
        goto LABEL_58;
      }

      if (ioctl(v10, 0xC02069ACuLL, &v70))
      {
        v39 = rnfLogHandle;
        if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
        {
          v40 = *(a1 + 32);
          v41 = *(v40 + 16);
          v20 = v39;
          v42 = *__error();
          *buf = 134218498;
          v65 = v40;
          v66 = 2080;
          v67 = v41;
          v68 = 1024;
          LODWORD(v69) = v42;
          v22 = "TCPPP: %p ioctl failure to fetch kernel's state on interface %s, errno %d";
          goto LABEL_41;
        }

        goto LABEL_60;
      }

      v54 = *(a1 + 48);
      if (v54)
      {
        *v54 = v71;
LABEL_59:
        *(*(*(a1 + 40) + 8) + 24) = 1;
        goto LABEL_60;
      }

      v59 = rnfLogHandle;
      if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_60;
      }

      v60 = *(a1 + 32);
      *buf = 134217984;
      v65 = v60;
      v46 = "TCPPP: %p kernel probing state: invalid out arg";
      v47 = v59;
      v48 = 12;
      goto LABEL_44;
    }

    v23 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 32);
      v25 = "<empty>";
      if (!*(v24 + 16))
      {
        v25 = "NULL";
      }

      *buf = 134218242;
      v65 = v24;
      v66 = 2080;
      v67 = v25;
      v26 = "TCPPP: %p interfaceName is %s";
      v27 = v23;
      v28 = 22;
      goto LABEL_28;
    }
  }

LABEL_33:
  v34 = *MEMORY[0x277D85DE8];
}

- (void)fetchMetricsForFlowsAged:(double)aged metrics:(nstat_progress_indicators *)metrics includeQUICFlows:(BOOL)flows resultBlock:(id)block
{
  flowsCopy = flows;
  v48 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!metrics)
  {
    v19 = rnfLogHandle;
    if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    LODWORD(v43[0]) = 134217984;
    *(v43 + 4) = self;
    v20 = "TCPPP: %p invalid argument (metrics is nil)";
    v21 = v43;
    v22 = v19;
    v23 = 12;
LABEL_15:
    _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, v20, v21, v23);
    goto LABEL_16;
  }

  if (aged <= 0.0)
  {
    v24 = rnfLogHandle;
    if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    LODWORD(v43[0]) = 134218240;
    *(v43 + 4) = self;
    WORD6(v43[0]) = 2048;
    *(v43 + 14) = aged;
    v20 = "TCPPP: %p invalid argument (age: %f)";
    v21 = v43;
    v22 = v24;
    v23 = 22;
    goto LABEL_15;
  }

  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  v44 = 0u;
  memset(v43, 0, sizeof(v43));
  v31 = 96;
  interfaceIndex = self->_interfaceIndex;
  v33 = 0;
  v32[0] = interfaceIndex;
  v12 = machAbsoluteTimeFromNanoseconds((aged * 1000000000.0));
  v13 = 4096;
  if (self->_localFlowTracking)
  {
    v13 = 2048;
  }

  v32[1] = v12;
  v33 = v13;
  v14 = 3;
  if (!flowsCopy)
  {
    v14 = 1;
  }

  v34 = v14;
  if (sysctlbyname("net.stats.progress", v43, &v31, v32, 0x20uLL) < 0)
  {
    v25 = __error();
    v26 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      v27 = *v25;
      interfaceName = self->interfaceName;
      v29 = self->_interfaceIndex;
      *buf = 134218754;
      selfCopy = self;
      v37 = 2080;
      v38 = interfaceName;
      v39 = 2048;
      v40 = v29;
      v41 = 1024;
      v42 = v27;
      v20 = "TCPPP: %p query failed on ifname=%s, ifIndex=%llu (errno = %d)";
      v21 = buf;
      v22 = v26;
      v23 = 38;
      goto LABEL_15;
    }

LABEL_16:
    (*(blockCopy + 2))(blockCopy, 0, 0);
    goto LABEL_17;
  }

  v15 = v45;
  v16 = v46;
  *&metrics->var7 = v44;
  *&metrics->var9 = v15;
  v17 = v47;
  *&metrics->var11 = v16;
  *&metrics->var13 = v17;
  v18 = v43[1];
  *&metrics->var0 = v43[0];
  *&metrics->var4 = v18;
  (*(blockCopy + 2))(blockCopy, 1, metrics);
LABEL_17:

  v30 = *MEMORY[0x277D85DE8];
}

- (BOOL)interfaceMappingIsCurrent
{
  v17 = *MEMORY[0x277D85DE8];
  interfaceIndex = self->_interfaceIndex;
  v4 = if_nametoindex(self->interfaceName);
  if (interfaceIndex != v4)
  {
    v5 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      interfaceName = self->interfaceName;
      v7 = self->_interfaceIndex;
      v8 = v5;
      v11 = 136315650;
      v12 = interfaceName;
      v13 = 2048;
      v14 = v7;
      v15 = 1024;
      v16 = if_nametoindex(interfaceName);
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "TCPPP: probe for interface %s was on index %llu, should be on %u", &v11, 0x1Cu);
    }
  }

  result = interfaceIndex == v4;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void __36__TCPProgressProbe_manage_outValue___block_invoke_cold_1(char **a1)
{
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_1(&dword_23255B000, v2, v3, "strict_strlcpy called with NULL src", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
  asprintf(a1, "strict_strlcpy called with NULL src");
  qword_27DDA0B50 = *a1;
  __break(1u);
}

@end