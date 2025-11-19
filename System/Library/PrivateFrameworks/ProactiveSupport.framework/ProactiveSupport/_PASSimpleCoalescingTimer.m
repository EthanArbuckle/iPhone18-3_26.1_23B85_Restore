@interface _PASSimpleCoalescingTimer
- (_PASSimpleCoalescingTimer)initWithQueue:(id)a3 leewaySeconds:(double)a4 operation:(id)a5;
@end

@implementation _PASSimpleCoalescingTimer

- (_PASSimpleCoalescingTimer)initWithQueue:(id)a3 leewaySeconds:(double)a4 operation:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = _PASSimpleCoalescingTimer;
  v10 = [(_PASSimpleCoalescingTimer *)&v17 init];
  if (v10)
  {
    v11 = [_PASCoalescingTimer alloc];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67___PASSimpleCoalescingTimer_initWithQueue_leewaySeconds_operation___block_invoke_2;
    v15[3] = &unk_1E77F2040;
    v16 = v9;
    v12 = [(_PASCoalescingTimer *)v11 initWithQueue:v8 leewaySeconds:&__block_literal_global_59 coalesceData:v15 operation:a4];
    timer = v10->_timer;
    v10->_timer = v12;
  }

  return v10;
}

@end