@interface SidecarOPACKInit
@end

@implementation SidecarOPACKInit

uint64_t (*___SidecarOPACKInit_block_invoke())(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v0 = dlopen("/System/Library/PrivateFrameworks/CoreUtils.framework/CoreUtils", 1);
  v1 = dlsym(v0, "OPACKEncoderCreateData");
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = _SidecarOPACKStub;
  }

  _SidecarOPACKEncode = v2;
  result = dlsym(v0, "OPACKDecodeData");
  if (result)
  {
    v4 = result;
  }

  else
  {
    v4 = _SidecarOPACKStub;
  }

  _SidecarOPACKDecode = v4;
  return result;
}

@end