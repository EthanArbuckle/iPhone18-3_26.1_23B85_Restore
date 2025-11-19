@interface MFSocket
@end

@implementation MFSocket

void __31___MFSocket_serverCertificates__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stream];
  v3 = [v2 propertyForKey:*MEMORY[0x277CBAE60]];

  if (v3)
  {
    CertificateCount = SecTrustGetCertificateCount(v3);
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:CertificateCount];
    if (CertificateCount >= 1)
    {
      for (i = 0; i != CertificateCount; ++i)
      {
        [v5 addObject:{SecTrustGetCertificateAtIndex(v3, i)}];
      }
    }

    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v5;
  }
}

void __38___MFSocket_setConnectionServiceType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v2 + 16);
  v4 = (v2 + 16);
  if (v5 != v3)
  {
    objc_storeStrong(v4, v3);
  }
}

uint64_t __24___MFSocket_setTimeout___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 88) != v2)
  {
    *(v1 + 88) = v2;
  }

  return result;
}

void __35___MFSocket_initWithMambaID_rumba___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"SocketTimeout"];

  if (v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v2 integerForKey:@"SocketTimeout"];
    *(*(*(a1 + 40) + 8) + 24) &= ~(*(*(*(a1 + 40) + 8) + 24) >> 31);
  }

  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v4 BOOLForKey:@"DisableThroughputMonitoring"];

  v6 = *(a1 + 32);
  if (v5)
  {
    *(v6 + 44) = 0;
    v7 = ctu::OsLogLogger::getOsLogHandle(*(*(a1 + 32) + 56));
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = *(v8 + 64);
      v9 = *(v8 + 72);
      v18 = 136315906;
      v19 = v10;
      v20 = 2080;
      v21 = " ";
      v22 = 2114;
      v23 = v9;
      v24 = 2080;
      v25 = " ";
      v11 = "#I %s%s%{public}@%sthroughput monitoring is OFF";
      v12 = v7;
      v13 = 42;
LABEL_8:
      _os_log_impl(&dword_2720B1000, v12, OS_LOG_TYPE_DEFAULT, v11, &v18, v13);
    }
  }

  else
  {
    *(v6 + 44) = 512;
    v7 = ctu::OsLogLogger::getOsLogHandle(*(*(a1 + 32) + 56));
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = *(v14 + 64);
      v16 = *(v14 + 72);
      LODWORD(v14) = *(v14 + 44);
      v18 = 136316162;
      v19 = v15;
      v20 = 2080;
      v21 = " ";
      v22 = 2114;
      v23 = v16;
      v24 = 2080;
      v25 = " ";
      v26 = 1024;
      v27 = v14;
      v11 = "#I %s%s%{public}@%slow throughput threshold is %d bytes/sec";
      v12 = v7;
      v13 = 48;
      goto LABEL_8;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __20___MFSocket_dealloc__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stream];

  if (v2)
  {
    v3 = *(a1 + 32);

    [v3 __abort];
  }
}

void __36___MFSocket_connectToHost_withPort___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) stream];

  if (v7 == v5)
  {
    [*(*(a1 + 32) + 8) lock];
    if ([v6 isEqualToString:@"MFStreamEventCanAcceptBytes"])
    {
      *(*(a1 + 32) + 49) = 1;
    }

    else
    {
      v8 = [v6 isEqualToString:@"MFStreamEventHasBytesAvailable"];
      v9 = *(a1 + 32);
      if (v8)
      {
        v9[48] = 1;
        v10 = [*(a1 + 32) getEventHandler];
        v11 = v10;
        if (v10)
        {
          v13 = 2;
          [v10 setArgument:&v13 atIndex:2];
          [v11 invoke];
        }
      }

      else
      {
        v12 = [v9 getClosingEventHandler];
        v11 = v12;
        if (v12)
        {
          v13 = 16;
          [v12 setArgument:&v13 atIndex:2];
          [v11 invoke];
        }

        *(*(a1 + 32) + 49) = 0;
        *(*(a1 + 32) + 48) = 0;
      }
    }

    [*(*(a1 + 32) + 8) broadcast];
    [*(*(a1 + 32) + 8) unlock];
  }
}

void __36___MFSocket_connectToHost_withPort___block_invoke_2(uint64_t a1, id *a2)
{
  v46[2] = *MEMORY[0x277D85DE8];
  v4 = MFUserAgent();
  v5 = [v4 isForeground];

  if ((v5 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      ++*(WeakRetained + 10);
      v8 = ctu::OsLogLogger::getOsLogHandle(WeakRetained[7]);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v7[8];
        v10 = v7[9];
        *buf = 136315906;
        v30 = v9;
        v31 = 2080;
        v32 = " ";
        v33 = 2114;
        v34 = v10;
        v35 = 2080;
        v36 = " ";
        _os_log_impl(&dword_2720B1000, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sreceived low throughput notification", buf, 0x2Au);
      }

      if (*(v7 + 10) < 11)
      {
        goto LABEL_16;
      }

      v11 = ctu::OsLogLogger::getOsLogHandle(v7[7]);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
LABEL_13:

        v45[0] = @"stream";
        v18 = MEMORY[0x277CCACA8];
        v19 = [v7 stream];
        v20 = [v18 stringWithFormat:@"%p", v19];
        v46[0] = v20;
        v45[1] = @"threshold";
        v21 = [MEMORY[0x277CCABB0] numberWithInt:*(v7 + 11)];
        v46[1] = v21;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
        [MFPowerController powerlog:@"LowThroughput" eventData:v22];

        v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:60 localizedDescription:0];
        v24 = ctu::OsLogLogger::getOsLogHandle(v7[7]);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v27 = v7[8];
          v26 = v7[9];
          v28 = [v23 domain];
          *buf = 136316930;
          v30 = v27;
          v31 = 2080;
          v32 = " ";
          v33 = 2114;
          v34 = v26;
          v35 = 2080;
          v36 = " ";
          v37 = 1024;
          v38 = 1463;
          v39 = 2080;
          v40 = "low throughput";
          v41 = 2112;
          v42 = v28;
          v43 = 2048;
          v44 = 60;
          _os_log_error_impl(&dword_2720B1000, v24, OS_LOG_TYPE_ERROR, "#E %s%s%{public}@%s*** _NSSocket.m:%d (%s) failed; error=(%@, %ld)", buf, 0x4Eu);
        }

        [*(a1 + 32) setError:v23];
        [v7 abort];

LABEL_16:
        goto LABEL_17;
      }

      v12 = v7[8];
      v13 = v7[9];
      *buf = 136315906;
      v30 = v12;
      v31 = 2080;
      v32 = " ";
      v33 = 2114;
      v34 = v13;
      v35 = 2080;
      v36 = " ";
      v14 = "#I %s%s%{public}@%stearing down connection due to low throughput";
      v15 = v11;
      v16 = 42;
    }

    else
    {
      v17 = vm_vmd_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v30 = a2;
        _os_log_impl(&dword_2720B1000, v17, OS_LOG_TYPE_DEFAULT, "(%p) received low throughput notification", buf, 0xCu);
      }

      v11 = vm_vmd_log();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 134217984;
      v30 = a2;
      v14 = "(%p) tearing down connection due to low throughput";
      v15 = v11;
      v16 = 12;
    }

    _os_log_impl(&dword_2720B1000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
    goto LABEL_13;
  }

LABEL_17:
  v25 = *MEMORY[0x277D85DE8];
}

void __41___MFSocket_threadsafe_bufferedByteCount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stream];
  v3 = [v2 propertyForKey:*MEMORY[0x277CBF078]];

  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 length] == 4)
    {
      v4 = *[v3 bytes];
      if (v4 != -1)
      {
        v5 = 4;
        v6 = 0;
        getsockopt(v4, 0xFFFF, 4132, &v6, &v5);
        *(*(*(a1 + 40) + 8) + 24) = v6;
      }
    }
  }
}

void __29___MFSocket_setEventHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v2 + 24);
  v4 = (v2 + 24);
  if (v5 != v3)
  {
    objc_storeStrong(v4, v3);
  }
}

void __36___MFSocket_setClosingEventHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v2 + 32);
  v4 = (v2 + 32);
  if (v5 != v3)
  {
    objc_storeStrong(v4, v3);
  }
}

void __27___MFSocket_remoteHostname__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) stream];
  v2 = [v5 propertyForKey:*MEMORY[0x277CBF080]];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __29___MFSocket_remotePortNumber__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stream];
  v4 = [v2 propertyForKey:*MEMORY[0x277CBF088]];

  v3 = v4;
  if (v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v4 unsignedIntValue];
    v3 = v4;
  }
}

void __33___MFSocket_isCellularConnection__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) stream];
  v2 = [v3 propertyForKey:*MEMORY[0x277CBADC0]];
  *(*(*(a1 + 40) + 8) + 24) = *MEMORY[0x277CBED28] == v2;
}

void __40___MFSocket_enableThroughputMonitoring___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[11] >= 1)
  {
    v3 = [v2 stream];
    v4 = v3;
    if (v3)
    {
      if (*(a1 + 40) == 1)
      {
        v5 = [MEMORY[0x277CCABB0] numberWithInt:*(*(a1 + 32) + 44)];
        [v4 setProperty:v5 forKey:*MEMORY[0x277CBACA0]];

        v6 = ctu::OsLogLogger::getOsLogHandle(*(*(a1 + 32) + 56));
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(a1 + 32);
          v9 = *(v7 + 64);
          v8 = *(v7 + 72);
          v20 = 136316162;
          v21 = v9;
          v22 = 2080;
          v23 = " ";
          v24 = 2114;
          v25 = v8;
          v26 = 2080;
          v27 = " ";
          v28 = 2112;
          v29 = v4;
          v10 = "#I %s%s%{public}@%sthroughput monitoring ON for stream %@";
LABEL_10:
          v14 = v6;
          v15 = 52;
          goto LABEL_11;
        }
      }

      else
      {
        [v3 setProperty:&unk_2881756E0 forKey:*MEMORY[0x277CBACA0]];
        *(*(a1 + 32) + 40) = 0;
        v6 = ctu::OsLogLogger::getOsLogHandle(*(*(a1 + 32) + 56));
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a1 + 32);
          v18 = *(v16 + 64);
          v17 = *(v16 + 72);
          v20 = 136316162;
          v21 = v18;
          v22 = 2080;
          v23 = " ";
          v24 = 2114;
          v25 = v17;
          v26 = 2080;
          v27 = " ";
          v28 = 2112;
          v29 = v4;
          v10 = "#I %s%s%{public}@%sthroughput monitoring OFF for stream %@";
          goto LABEL_10;
        }
      }
    }

    else
    {
      v6 = ctu::OsLogLogger::getOsLogHandle(*(*(a1 + 32) + 56));
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v13 = *(v11 + 64);
        v12 = *(v11 + 72);
        v20 = 136315906;
        v21 = v13;
        v22 = 2080;
        v23 = " ";
        v24 = 2114;
        v25 = v12;
        v26 = 2080;
        v27 = " ";
        v10 = "#I %s%s%{public}@%scan't change throughput monitoring, stream closed";
        v14 = v6;
        v15 = 42;
LABEL_11:
        _os_log_impl(&dword_2720B1000, v14, OS_LOG_TYPE_DEFAULT, v10, &v20, v15);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end