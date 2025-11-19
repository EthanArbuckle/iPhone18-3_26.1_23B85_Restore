@interface CryptexRemoteServiceNonceAttr
- (CryptexRemoteServiceNonceAttr)init;
- (unint64_t)getNonceDomainIndex;
- (unsigned)ndom_handle;
- (void)getNonceDomainIndex;
@end

@implementation CryptexRemoteServiceNonceAttr

- (CryptexRemoteServiceNonceAttr)init
{
  v3.receiver = self;
  v3.super_class = CryptexRemoteServiceNonceAttr;
  result = [(CryptexRemoteServiceNonceAttr *)&v3 init];
  *&result->_image_type = xmmword_2986E8C80;
  result->_ndom_handle = -1;
  return result;
}

- (unint64_t)getNonceDomainIndex
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = [(CryptexRemoteServiceNonceAttr *)self image_type];
  if (v3)
  {
    if (v3 != 1)
    {
      [(CryptexRemoteServiceNonceAttr *)&v6 getNonceDomainIndex];
    }

    if ([(CryptexRemoteServiceNonceAttr *)self persistence])
    {
      result = 4;
    }

    else
    {
      result = 2;
    }
  }

  else
  {
    result = 3;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

- (unsigned)ndom_handle
{
  v7 = *MEMORY[0x29EDCA608];
  if ([(CryptexRemoteServiceNonceAttr *)self image_type]!= 2)
  {
    [(CryptexRemoteServiceNonceAttr *)&v5 getNonceDomainIndex];
  }

  result = self->_ndom_handle;
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

- (void)getNonceDomainIndex
{
  OUTLINED_FUNCTION_2(a1, a2);
  OUTLINED_FUNCTION_4();
  [a3 image_type];
  OUTLINED_FUNCTION_0_0();
  v5 = *a1;
  _os_crash_msg();
  __break(1u);
}

@end