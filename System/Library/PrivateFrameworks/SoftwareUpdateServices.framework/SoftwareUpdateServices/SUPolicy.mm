@interface SUPolicy
- (id)_stringForBool:(BOOL)a3;
- (id)description;
@end

@implementation SUPolicy

- (id)_stringForBool:(BOOL)a3
{
  if (a3)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SUPolicy *)self _stringForBool:[(SUPolicy *)self discretionary]];
  v5 = [(SUPolicy *)self _stringForBool:[(SUPolicy *)self allowsCellular]];
  v6 = [(SUPolicy *)self _stringForBool:[(SUPolicy *)self requiresPowerPluggedIn]];
  v7 = [v3 stringWithFormat:@"\n            discretionary: %@\n            allowsCellular: %@\n            requiresPowerPluggedIn: %@\n            downloadTimeoutSecs: %d", v4, v5, v6, -[SUPolicy downloadTimeoutSecs](self, "downloadTimeoutSecs")];

  return v7;
}

@end