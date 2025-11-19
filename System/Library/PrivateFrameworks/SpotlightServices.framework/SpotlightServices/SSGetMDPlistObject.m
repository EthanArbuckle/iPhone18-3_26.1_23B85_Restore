@interface SSGetMDPlistObject
@end

@implementation SSGetMDPlistObject

void ___SSGetMDPlistObject_block_invoke()
{
  v0 = SSDefaultsGetAssetPath(@"appExtras.mdplist");
  v1 = [v0 cStringUsingEncoding:4];
  if (v1)
  {
    v2 = open(v1, 0);
    if (v2 != -1)
    {
      v3 = v2;
      memset(&v9, 0, sizeof(v9));
      if (!fstat(v2, &v9))
      {
        v4 = mmap(0, v9.st_size, 1, 1, v3, 0);
        if (v4 == -1)
        {
          goto LABEL_11;
        }

        v5 = v4;
        v6 = *MEMORY[0x1E695E480];
        _SSGetMDPlistObject_sAppExtrasContainer = _MDPlistContainerCreateWithBytes();
        if (_SSGetMDPlistObject_sAppExtrasContainer)
        {
          _MDPlistGetRootPlistObjectFromPlist();
          _SSGetMDPlistObject_rootObj = v7;
          qword_1ECB9F1F8 = v8;
          if (_MDPlistGetPlistObjectType() == 241)
          {
            if (!_SSGetMDPlistObject_sAppExtrasContainer)
            {
              goto LABEL_10;
            }

LABEL_11:
            close(v3);
            goto LABEL_12;
          }

          _SSGetMDPlistObject_sAppExtrasContainer = 0;
        }

LABEL_10:
        munmap(v5, v9.st_size);
        goto LABEL_11;
      }
    }
  }

LABEL_12:
}

@end