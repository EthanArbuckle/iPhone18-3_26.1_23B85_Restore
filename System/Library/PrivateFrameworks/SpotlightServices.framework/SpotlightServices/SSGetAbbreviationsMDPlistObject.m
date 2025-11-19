@interface SSGetAbbreviationsMDPlistObject
@end

@implementation SSGetAbbreviationsMDPlistObject

void ___SSGetAbbreviationsMDPlistObject_block_invoke()
{
  v0 = SSDefaultsGetAssetPath(@"abbreviations.mdplist");
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
        _SSGetAbbreviationsMDPlistObject_sAbbreviationsContainer = _MDPlistContainerCreateWithBytes();
        if (_SSGetAbbreviationsMDPlistObject_sAbbreviationsContainer)
        {
          _MDPlistGetRootPlistObjectFromPlist();
          _SSGetAbbreviationsMDPlistObject_rootObj = v7;
          qword_1ECB9F218 = v8;
          if (_MDPlistGetPlistObjectType() == 241)
          {
            if (!_SSGetAbbreviationsMDPlistObject_sAbbreviationsContainer)
            {
              goto LABEL_10;
            }

LABEL_11:
            close(v3);
            goto LABEL_12;
          }

          _SSGetAbbreviationsMDPlistObject_sAbbreviationsContainer = 0;
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