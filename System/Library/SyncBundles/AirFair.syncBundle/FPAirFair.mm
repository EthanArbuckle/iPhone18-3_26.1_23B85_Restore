@interface FPAirFair
- (BOOL)Jaz0t2BPNjwE;
- (BOOL)prepareForSyncWithHostAnchor:(id)a3 progressCallback:(id)a4 grappaID:(unsigned int)a5 hostVersion:(id)a6 error:(id *)a7;
- (BOOL)reconcileSync:(unsigned int)a3 withNewAnchor:(id)a4 progressCallback:(id)a5 error:(id *)a6;
- (FPAirFair)init;
- (int)DrFjYlmSKahjfJzgmaPvs:(FairPlayHWInfo_ *)a3;
- (int)ENaUvadPgTNQtAOA;
- (int)FVxWQcJol3R;
- (int)MvKgJWHiyPi9jHcCD1zBrVK7F:(id)a3 bytes:(char *)a4 size:(unsigned int *)a5;
- (int)U0DV0QxFFjyMatlbDyqSZ4s3d:(id)a3;
- (int)cIjYbQiRD8mj9H;
- (int)wkiHcH3uUYkLWEOOs:(char *)a3 reqSize:(unsigned int)a4 fileName:(id)a5;
- (void)dealloc;
- (void)syncEndedWithSuccess:(BOOL)a3;
@end

@implementation FPAirFair

- (FPAirFair)init
{
  v5.receiver = self;
  v5.super_class = FPAirFair;
  v2 = [(FPAirFair *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FPAirFair *)v2 ENaUvadPgTNQtAOA];
  }

  return v3;
}

- (void)dealloc
{
  HPD8FhhtYi5OC5SPY = self->HPD8FhhtYi5OC5SPY;
  if (HPD8FhhtYi5OC5SPY)
  {
    VLxCLgDpiF(HPD8FhhtYi5OC5SPY);
    self->HPD8FhhtYi5OC5SPY = 0;
  }

  v4.receiver = self;
  v4.super_class = FPAirFair;
  [(FPAirFair *)&v4 dealloc];
}

- (BOOL)prepareForSyncWithHostAnchor:(id)a3 progressCallback:(id)a4 grappaID:(unsigned int)a5 hostVersion:(id)a6 error:(id *)a7
{
  v20 = 0;
  v19 = 0;
  v18 = 0;
  self->LnGBbUJQLDA = a5;
  df35957c4e0();
  if (!v10 || (v11 = [(FPAirFair *)self ENaUvadPgTNQtAOA], !v11))
  {
    v12 = a6 && ([@"11.0.2.0" compare:a6 options:64] == -1 || !objc_msgSend(@"11.0.2.0", "compare:options:", a6, 64)) ? 110103 : 0;
    Mt76Vq80ux(self->HPD8FhhtYi5OC5SPY, 0, v12, 7, &v20, &v19);
    if (!v11)
    {
      v11 = [(FPAirFair *)self FVxWQcJol3R];
      if (!v11)
      {
        v11 = [(FPAirFair *)self wkiHcH3uUYkLWEOOs:v20 reqSize:v19 fileName:@"/var/mobile/Media/AirFair/sync/afsync.rq"];
        if (!v11)
        {
          jumT7rcoieclCtxS2rgJ(self->LnGBbUJQLDA, v20, v19, &v18);
          if (!v11)
          {
            v11 = [(FPAirFair *)self wkiHcH3uUYkLWEOOs:v18 reqSize:0 fileName:@"/var/mobile/Media/AirFair/sync/afsync.rq.sig"];
          }
        }
      }
    }
  }

  v13 = v11;
  if (v20)
  {
    jEHf8Xzsv8K(v20);
  }

  if (v18)
  {
    X5EvIJWqdcALcjaxX6Pl(v18);
  }

  if (v13)
  {
    v14 = [NSString stringWithFormat:@"AirFair:prepareForSyncWithHostAnchor failed with error %d", v13];
    v15 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v14;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v16 = [[NSError alloc] initWithDomain:@"AirFair" code:v13 userInfo:0];
    if (v16)
    {
      *a7 = v16;
    }
  }

  return v13 == 0;
}

- (BOOL)reconcileSync:(unsigned int)a3 withNewAnchor:(id)a4 progressCallback:(id)a5 error:(id *)a6
{
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  if (![(FPAirFair *)self Jaz0t2BPNjwE:*&a3])
  {
    goto LABEL_15;
  }

  v8 = [(FPAirFair *)self MvKgJWHiyPi9jHcCD1zBrVK7F:@"/var/mobile/Media/AirFair/sync/afsync.rs.sig" bytes:&v16 size:&v15];
  if (!v8)
  {
    v8 = [(FPAirFair *)self MvKgJWHiyPi9jHcCD1zBrVK7F:@"/var/mobile/Media/AirFair/sync/afsync.rs" bytes:&v18 size:&v17];
    if (!v8)
    {
      CFUnnB0JdUjJ5CNJMkDS();
      if (!v8)
      {
        lCUad();
      }
    }
  }

  v9 = v8;
  if (v16)
  {
    X5EvIJWqdcALcjaxX6Pl(v16);
  }

  if (v18)
  {
    free(v18);
  }

  if (v9)
  {
    v10 = [NSString stringWithFormat:@"AirFair:reconcileSync failed with error %d", v9];
    v11 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v12 = [[NSError alloc] initWithDomain:@"AirFair.syncbundle reconsileSync" code:v9 userInfo:0];
    if (v12)
    {
      v13 = v12;
      LOBYTE(v12) = 0;
      *a6 = v13;
    }
  }

  else
  {
LABEL_15:
    LOBYTE(v12) = 1;
  }

  return v12;
}

- (void)syncEndedWithSuccess:(BOOL)a3
{
  v3 = [(FPAirFair *)self cIjYbQiRD8mj9H];
  if (v3 != -42112 && v3)
  {
    v4 = [NSString stringWithFormat:@"AirFair:syncEndedWithSuccess failed with error %d", v3];
    v5 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v7 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }
}

- (BOOL)Jaz0t2BPNjwE
{
  memset(&v3.st_size, 0, 48);
  if (!lstat([@"/var/mobile/Media/AirFair/sync/afsync.rs" UTF8String], &v3))
  {
    return v3.st_size != 0;
  }

  __error();
  return 0;
}

- (int)FVxWQcJol3R
{
  *__error() = 0;
  v2 = umask(0);
  if (mkdir([@"/var/mobile/Media/AirFair/" UTF8String], 0x1F6u) < 0 && *__error() != 17)
  {
    v3 = -42110;
  }

  else
  {
    *__error() = 0;
    v3 = 0;
    if (mkdir([@"/var/mobile/Media/AirFair/sync/" UTF8String], 0x1F6u) < 0)
    {
      if (*__error() == 17)
      {
        v3 = 0;
      }

      else
      {
        v3 = -42110;
      }
    }
  }

  umask(v2);
  return v3;
}

- (int)wkiHcH3uUYkLWEOOs:(char *)a3 reqSize:(unsigned int)a4 fileName:(id)a5
{
  v7 = [a5 UTF8String];
  v8 = umask(0);
  v9 = open(v7, 1825, 420);
  if (v9 < 0)
  {
    if (*__error() == 2)
    {
      v11 = -42112;
    }

    else
    {
      v11 = -42110;
    }
  }

  else
  {
    v10 = v9;
    if (write(v9, a3, a4) == a4)
    {
      v11 = 0;
    }

    else
    {
      v11 = -42110;
    }

    close(v10);
  }

  umask(v8);
  return v11;
}

- (int)MvKgJWHiyPi9jHcCD1zBrVK7F:(id)a3 bytes:(char *)a4 size:(unsigned int *)a5
{
  memset(&v14, 0, sizeof(v14));
  v7 = open([a3 UTF8String], 272, 0);
  if (v7 < 0)
  {
    v9 = 0;
    st_size = 0;
    if (*__error() == 2)
    {
      v11 = -42112;
    }

    else
    {
      v11 = -42110;
    }
  }

  else
  {
    v8 = v7;
    if (fstat(v7, &v14))
    {
      v9 = 0;
      st_size = 0;
      v11 = -42110;
    }

    else
    {
      st_size = v14.st_size;
      v9 = malloc_type_malloc(LODWORD(v14.st_size), 0xDCC30B5DuLL);
      if (v9)
      {
        v12 = read(v8, v9, v14.st_size);
        if (v12 == v14.st_size)
        {
          v11 = 0;
        }

        else
        {
          v11 = -42110;
        }
      }

      else
      {
        v11 = -42028;
      }
    }

    close(v8);
    if (v9 && v11)
    {
      free(v9);
      v9 = 0;
      st_size = 0;
    }
  }

  *a4 = v9;
  *a5 = st_size;
  return v11;
}

- (int)U0DV0QxFFjyMatlbDyqSZ4s3d:(id)a3
{
  v3 = [a3 UTF8String];
  if (lstat(v3, &v6))
  {
    if (*__error() == 2)
    {
      return -42112;
    }

    else
    {
      return -42110;
    }
  }

  else
  {
    v4 = -42110;
    if ((v6.st_mode & 0xF000) != 0xA000)
    {
      if (unlink(v3))
      {
        return -42110;
      }

      else
      {
        return 0;
      }
    }
  }

  return v4;
}

- (int)cIjYbQiRD8mj9H
{
  [(FPAirFair *)self U0DV0QxFFjyMatlbDyqSZ4s3d:@"/var/mobile/Media/AirFair/sync/afsync.rq"];
  [(FPAirFair *)self U0DV0QxFFjyMatlbDyqSZ4s3d:@"/var/mobile/Media/AirFair/sync/afsync.rq.sig"];
  [(FPAirFair *)self U0DV0QxFFjyMatlbDyqSZ4s3d:@"/var/mobile/Media/AirFair/sync/afsync.rs"];

  return [(FPAirFair *)self U0DV0QxFFjyMatlbDyqSZ4s3d:@"/var/mobile/Media/AirFair/sync/afsync.rs.sig"];
}

- (int)DrFjYlmSKahjfJzgmaPvs:(FairPlayHWInfo_ *)a3
{
  if (!a3)
  {
    return -42023;
  }

  v4 = MGCopyAnswer();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  if (v6 != CFStringGetTypeID())
  {
    return -42023;
  }

  if (CFStringGetCString(v5, buffer, 41, 0x8000100u))
  {
    v7 = strlen(buffer);
    zxcm2Qme0x(buffer, v7, a3);
    v9 = v8;
  }

  else
  {
    v9 = -42023;
  }

  CFRelease(v5);
  return v9;
}

- (int)ENaUvadPgTNQtAOA
{
  memset(v12, 0, sizeof(v12));
  v3 = [(FPAirFair *)self DrFjYlmSKahjfJzgmaPvs:v12];
  if (!v3)
  {
    v5 = XtCqEf5X(0, v12, "/var/mobile/Media/iTunes_Control/iTunes/", &self->HPD8FhhtYi5OC5SPY);
    v3 = v5;
    if (v5)
    {
      if (v5 == -42180)
      {
        v3 = -42180;
        v6 = [NSString stringWithFormat:@"AirFair plugin failed to initialize %d - to be expected on boot before SpringBoard (rdar://9874159)", 4294925116];
        v7 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v11 = v6;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          return -42180;
        }
      }

      else
      {
        v8 = [NSString stringWithFormat:@"AirFair plugin failed to initialize %d", v5];
        v9 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v11 = v8;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  return v3;
}

@end