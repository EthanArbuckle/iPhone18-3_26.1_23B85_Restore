@interface PLClientApplicationIdentification
- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken;
- (PLClientApplicationIdentification)initWithConnection:(id)connection;
@end

@implementation PLClientApplicationIdentification

- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken
{
  v3 = *&self->var0[6];
  *retstr->var0 = *&self->var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

- (PLClientApplicationIdentification)initWithConnection:(id)connection
{
  connectionCopy = connection;
  if (!connectionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLXPCUtilities.m" lineNumber:941 description:{@"Invalid parameter not satisfying: %@", @"connection"}];
  }

  v13.receiver = self;
  v13.super_class = PLClientApplicationIdentification;
  v6 = [(PLClientApplicationIdentification *)&v13 init];
  if (v6)
  {
    if (connectionCopy)
    {
      [connectionCopy auditToken];
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    *(v6 + 24) = v12;
    *(v6 + 8) = v11;
    *(v6 + 10) = [connectionCopy processIdentifier];
    v7 = PLClientApplicationIdentifierFromXPCConnection(connectionCopy);
    v8 = *(v6 + 6);
    *(v6 + 6) = v7;
  }

  return v6;
}

@end