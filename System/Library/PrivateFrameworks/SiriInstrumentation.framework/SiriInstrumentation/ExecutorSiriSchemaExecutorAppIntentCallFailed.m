@interface ExecutorSiriSchemaExecutorAppIntentCallFailed
- (BOOL)isEqual:(id)a3;
- (ExecutorSiriSchemaExecutorAppIntentCallFailed)initWithDictionary:(id)a3;
- (ExecutorSiriSchemaExecutorAppIntentCallFailed)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ExecutorSiriSchemaExecutorAppIntentCallFailed

- (ExecutorSiriSchemaExecutorAppIntentCallFailed)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ExecutorSiriSchemaExecutorAppIntentCallFailed;
  v5 = [(ExecutorSiriSchemaExecutorAppIntentCallFailed *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ExecutorSiriSchemaExecutorAppIntentCallFailed setReason:](v5, "setReason:", [v6 intValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (ExecutorSiriSchemaExecutorAppIntentCallFailed)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ExecutorSiriSchemaExecutorAppIntentCallFailed *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ExecutorSiriSchemaExecutorAppIntentCallFailed *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [(ExecutorSiriSchemaExecutorAppIntentCallFailed *)self reason];
    v5 = @"EXECUTORAPPINTENTERROR_UNKNOWN";
    if (v4 <= 99)
    {
      v6 = @"EXECUTORAPPINTENTERROR_ACTIONFAILURE_ENTITY_NOT_FOUND";
      v7 = @"EXECUTORAPPINTENTERROR_ACTIONFAILURE_ACTION_NOT_ALLOWED";
      v8 = @"EXECUTORAPPINTENTERROR_ACTIONFAILURE_DEVELOPER_DEFINED_ERROR";
      if (v4 != 12)
      {
        v8 = @"EXECUTORAPPINTENTERROR_UNKNOWN";
      }

      if (v4 != 11)
      {
        v7 = v8;
      }

      if (v4 != 10)
      {
        v6 = v7;
      }

      v9 = @"EXECUTORAPPINTENTERROR_ACTIONFAILURE_PARTIAL_FAILURE";
      v10 = @"EXECUTORAPPINTENTERROR_ACTIONFAILURE_UNSUPPORTED_ON_DEVICE";
      v11 = @"EXECUTORAPPINTENTERROR_ACTIONFAILURE_FEATURE_CURRENTLY_RESTRICTED";
      if (v4 != 9)
      {
        v11 = @"EXECUTORAPPINTENTERROR_UNKNOWN";
      }

      if (v4 != 8)
      {
        v10 = v11;
      }

      if (v4 != 7)
      {
        v9 = v10;
      }

      if (v4 <= 9)
      {
        v6 = v9;
      }

      v12 = @"EXECUTORAPPINTENTERROR_ACTIONFAILURE_WIFI_DISABLED";
      v13 = @"EXECUTORAPPINTENTERROR_ACTIONFAILURE_BLUETOOTH_DISABLED";
      v14 = @"EXECUTORAPPINTENTERROR_ACTIONFAILURE_NETWORK_FAILURE";
      if (v4 != 6)
      {
        v14 = @"EXECUTORAPPINTENTERROR_UNKNOWN";
      }

      if (v4 != 5)
      {
        v13 = v14;
      }

      if (v4 != 4)
      {
        v12 = v13;
      }

      v15 = @"EXECUTORAPPINTENTERROR_ACTIONFAILURE_PRE_FLIGHT_CHECK_FAILURE";
      v16 = @"EXECUTORAPPINTENTERROR_ACTIONFAILURE_PRECISE_LOCATION_DISABLED";
      v17 = @"EXECUTORAPPINTENTERROR_ACTIONFAILURE_LOCATION_DISABLED";
      if (v4 != 3)
      {
        v17 = @"EXECUTORAPPINTENTERROR_UNKNOWN";
      }

      if (v4 != 2)
      {
        v16 = v17;
      }

      if (v4 != 1)
      {
        v15 = v16;
      }

      if (v4 <= 3)
      {
        v12 = v15;
      }

      if (v4 <= 6)
      {
        v5 = v12;
      }

      else
      {
        v5 = v6;
      }
    }

    else if (v4 > 199)
    {
      v18 = @"EXECUTORAPPINTENTERROR_RUNTIMEERROR_PROTECTED_APP_UNLOCK_REQUIRED";
      v19 = @"EXECUTORAPPINTENTERROR_TOOLEXECUTOR_PREDEFINED";
      if (v4 != 301)
      {
        v19 = @"EXECUTORAPPINTENTERROR_UNKNOWN";
      }

      if (v4 != 201)
      {
        v18 = v19;
      }

      if (v4 == 200)
      {
        v5 = @"EXECUTORAPPINTENTERROR_ACTIONREQUIREMENT_UNKNOWN";
      }

      else
      {
        v5 = v18;
      }
    }

    else
    {
      switch(v4)
      {
        case 'd':
          v5 = @"EXECUTORAPPINTENTERROR_ACTIONFAILURE_UNKNOWN";
          break;
        case 'e':
          v5 = @"EXECUTORAPPINTENTERROR_ACTIONREQUIREMENT_SYSTEMREQUIREMENT_DEVICE_UNLOCK_REQUIRED";
          break;
        case 'f':
          v5 = @"EXECUTORAPPINTENTERROR_ACTIONREQUIREMENT_APP_REQUIREMENT_SIGN_IN_REQUIRED";
          break;
        case 'g':
          v5 = @"EXECUTORAPPINTENTERROR_ACTIONREQUIREMENT_APP_REQUIREMENT_ACCOUNT_SETUP_REQUIRED";
          break;
        case 'h':
          v5 = @"EXECUTORAPPINTENTERROR_ACTIONREQUIREMENT_APP_REQUIREMENT_USER_CONFIRMATION_REQUIRED";
          break;
        case 'i':
          v5 = @"EXECUTORAPPINTENTERROR_ACTIONREQUIREMENT_PERMISSIONREQUIREMENT_SIRI_PERMISSION_REQUIRED";
          break;
        case 'j':
          v5 = @"EXECUTORAPPINTENTERROR_ACTIONREQUIREMENT_PERMISSIONREQUIREMENT_SHORTCUTS_PERMISSION_REQUIRED";
          break;
        case 'k':
          v5 = @"EXECUTORAPPINTENTERROR_ACTIONREQUIREMENT_PERMISSIONREQUIREMENT_PRECISE_LOCATION_PERMISSION_REQUIRED";
          break;
        case 'l':
          v5 = @"EXECUTORAPPINTENTERROR_ACTIONREQUIREMENT_PERMISSIONREQUIREMENT_LOCATION_PERMISSION_REQUIRED";
          break;
        case 'm':
          v5 = @"EXECUTORAPPINTENTERROR_ACTIONREQUIREMENT_PERMISSIONREQUIREMENT_WIFI_PERMISSION_REQUIRED";
          break;
        case 'n':
          v5 = @"EXECUTORAPPINTENTERROR_ACTIONREQUIREMENT_PERMISSIONREQUIREMENT_BLUETOOTH_PERMISSION_REQUIRED";
          break;
        case 'o':
          v5 = @"EXECUTORAPPINTENTERROR_ACTIONREQUIREMENT_PERMISSIONREQUIREMENT_PHOTOS_PERMISSION_REQUIRED";
          break;
        case 'p':
          v5 = @"EXECUTORAPPINTENTERROR_ACTIONREQUIREMENT_PERMISSIONREQUIREMENT_CONTACTS_PERMISSION_REQUIRED";
          break;
        default:
          break;
      }
    }

    [v3 setObject:v5 forKeyedSubscript:@"reason"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_reason;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = 0;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (v4[12] & 1))
    {
      if ((*&self->_has & 1) == 0 || (reason = self->_reason, reason == [v4 reason]))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end