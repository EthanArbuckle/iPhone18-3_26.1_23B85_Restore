@interface PLClientApplicationIdentification
- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken;
- (PLClientApplicationIdentification)initWithConnection:(id)a3;
@end

@implementation PLClientApplicationIdentification

- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken
{
  v3 = *&self->var0[6];
  *retstr->var0 = *&self->var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

- (PLClientApplicationIdentification)initWithConnection:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PLXPCUtilities.m" lineNumber:941 description:{@"Invalid parameter not satisfying: %@", @"connection"}];
  }

  v13.receiver = self;
  v13.super_class = PLClientApplicationIdentification;
  v6 = [(PLClientApplicationIdentification *)&v13 init];
  if (v6)
  {
    if (v5)
    {
      [v5 auditToken];
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    *(v6 + 24) = v12;
    *(v6 + 8) = v11;
    *(v6 + 10) = [v5 processIdentifier];
    v7 = PLClientApplicationIdentifierFromXPCConnection(v5);
    v8 = *(v6 + 6);
    *(v6 + 6) = v7;
  }

  return v6;
}

@end