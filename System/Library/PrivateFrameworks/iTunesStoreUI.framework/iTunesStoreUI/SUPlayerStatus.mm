@interface SUPlayerStatus
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
@end

@implementation SUPlayerStatus

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUPlayerStatus;
  [(SUPlayerStatus *)&v3 dealloc];
}

- (id)description
{
  v2 = self->_state - 1;
  if (v2 > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E8166FF0[v2];
  }

  v5.receiver = self;
  v5.super_class = SUPlayerStatus;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Time: (%.2f : %.2f), State: %@", -[SUPlayerStatus description](&v5, sel_description), *&self->_currentTime, *&self->_duration, v3];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v4 + 8) = self->_currentTime;
  *(v4 + 16) = self->_duration;
  *(v4 + 24) = self->_error;
  *(v4 + 32) = self->_state;
  return v4;
}

@end