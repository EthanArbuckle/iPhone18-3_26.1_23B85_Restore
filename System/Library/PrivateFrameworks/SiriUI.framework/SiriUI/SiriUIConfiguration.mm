@interface SiriUIConfiguration
- (SiriUIConfiguration)initWithFlamesViewFidelity:(int64_t)a3 isSystemHostedPresentation:(BOOL)a4 allowResizingBetweenModes:(BOOL)a5 siriViewMode:(int64_t)a6 showsSensitiveUI:(BOOL)a7;
- (id)_NSStringFromSiriViewMode:(int64_t)a3;
- (id)description;
@end

@implementation SiriUIConfiguration

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(SiriUIConfiguration *)self flamesViewFidelity];
  v4 = NSStringFromBOOL();
  [(SiriUIConfiguration *)self isSystemHostedPresentation];
  v5 = NSStringFromBOOL();
  v6 = [(SiriUIConfiguration *)self _NSStringFromSiriViewMode:[(SiriUIConfiguration *)self siriViewMode]];
  [(SiriUIConfiguration *)self showsSensitiveUI];
  v7 = NSStringFromBOOL();
  v8 = [v3 stringWithFormat:@"<SiriUIConfiguration flamesViewFidelity: %@, isSystemHostedPresentation: %@, siriViewMode: %@, showsSensitiveUI: %@>", v4, v5, v6, v7];

  return v8;
}

- (SiriUIConfiguration)initWithFlamesViewFidelity:(int64_t)a3 isSystemHostedPresentation:(BOOL)a4 allowResizingBetweenModes:(BOOL)a5 siriViewMode:(int64_t)a6 showsSensitiveUI:(BOOL)a7
{
  v13.receiver = self;
  v13.super_class = SiriUIConfiguration;
  result = [(SiriUIConfiguration *)&v13 init];
  if (result)
  {
    result->_isSystemHostedPresentation = a4;
    result->_flamesViewFidelity = a3;
    result->_siriViewMode = a6;
    result->_allowResizingBetweenModes = a5;
    result->_showsSensitiveUI = a7;
  }

  return result;
}

- (id)_NSStringFromSiriViewMode:(int64_t)a3
{
  if ((a3 - 4) > 4)
  {
    return @"AFUISiriViewModeNone";
  }

  else
  {
    return *(&off_279C5A6F8 + a3 - 4);
  }
}

@end