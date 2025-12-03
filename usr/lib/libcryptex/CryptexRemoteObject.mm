@interface CryptexRemoteObject
- (CryptexRemoteObject)initWithDesc:(id)desc;
- (void)dealloc;
@end

@implementation CryptexRemoteObject

- (CryptexRemoteObject)initWithDesc:(id)desc
{
  v15 = *MEMORY[0x29EDCA608];
  descCopy = desc;
  v12.receiver = self;
  v12.super_class = CryptexRemoteObject;
  v5 = [(CryptexRemoteObject *)&v12 init];
  string = xpc_dictionary_get_string(descCopy, "remote-cryptex-identifier");
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v7 = strdup(string);
      if (v7)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v7 = strdup(string);
    if (!v7)
    {
      [(CryptexRemoteObject *)string initWithDesc:v14];
    }
  }

  v5->_identifier = v7;
  v8 = xpc_dictionary_get_string(descCopy, "remote-cryptex-version");
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v9 = strdup(v8);
      if (v9)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v9 = strdup(v8);
    if (!v9)
    {
      [(CryptexRemoteObject *)v8 initWithDesc:v14];
    }
  }

  v5->_version = v9;

  v10 = *MEMORY[0x29EDCA608];
  return v5;
}

- (void)dealloc
{
  free(self->_identifier);
  self->_identifier = 0;
  free(self->_version);
  self->_version = 0;
  v3.receiver = self;
  v3.super_class = CryptexRemoteObject;
  [(CryptexRemoteObject *)&v3 dealloc];
}

- (void)initWithDesc:(_OWORD *)a3 .cold.1(const char *a1, void *a2, _OWORD *a3)
{
  strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  OUTLINED_FUNCTION_4();
  v5 = __error();
  strerror(*v5);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5_0();
  __break(1u);
}

@end