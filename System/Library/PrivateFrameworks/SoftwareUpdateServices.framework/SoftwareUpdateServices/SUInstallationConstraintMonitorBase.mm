@interface SUInstallationConstraintMonitorBase
- (BOOL)isSatisfied;
- (SUDownload)download;
- (SUInstallOptions)installOptions;
- (SUInstallationConstraintMonitorDelegate)delegate;
- (id)initOnQueue:(id)a3 withDownload:(id)a4 andInstallOptions:(id)a5;
- (id)initOnQueue:(id)a3 withRepresentedInstallationConstraints:(unint64_t)a4 andDownload:(id)a5 andInstallOptions:(id)a6;
- (unint64_t)representedConstraints;
- (unint64_t)unsatisfiedConstraints;
- (unint64_t)unsatisfiedConstraintsWithIgnorableConstraints:(unint64_t)a3;
- (void)setDelegate:(id)a3;
@end

@implementation SUInstallationConstraintMonitorBase

- (id)initOnQueue:(id)a3 withDownload:(id)a4 andInstallOptions:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"SUInstallationConstraintMonitorBase.m" lineNumber:31 description:@"Please use the subclass version: -initOnQueue:withRepresentedInstallationConstraints:andDownload:andInstallOptions"];

  return 0;
}

- (id)initOnQueue:(id)a3 withRepresentedInstallationConstraints:(unint64_t)a4 andDownload:(id)a5 andInstallOptions:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  BSDispatchQueueAssert();
  v17.receiver = self;
  v17.super_class = SUInstallationConstraintMonitorBase;
  v14 = [(SUInstallationConstraintMonitorBase *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_download, a5);
    v15->_representedConstraints = a4;
    objc_storeStrong(&v15->_installOptions, a6);
    objc_storeStrong(&v15->_queue, a3);
  }

  return v15;
}

- (SUDownload)download
{
  queue = self->_queue;
  BSDispatchQueueAssert();
  download = self->_download;

  return download;
}

- (SUInstallOptions)installOptions
{
  queue = self->_queue;
  BSDispatchQueueAssert();
  installOptions = self->_installOptions;

  return installOptions;
}

- (unint64_t)representedConstraints
{
  queue = self->_queue;
  BSDispatchQueueAssert();
  return self->_representedConstraints;
}

- (unint64_t)unsatisfiedConstraints
{
  queue = self->_queue;
  BSDispatchQueueAssert();

  return [(SUInstallationConstraintMonitorBase *)self representedConstraints];
}

- (SUInstallationConstraintMonitorDelegate)delegate
{
  queue = self->_queue;
  BSDispatchQueueAssert();
  WeakRetained = objc_loadWeakRetained(&self->_queue_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  queue = self->_queue;
  BSDispatchQueueAssert();
  WeakRetained = objc_loadWeakRetained(&self->_queue_delegate);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_queue_delegate, obj);
    v6 = obj;
  }
}

- (BOOL)isSatisfied
{
  queue = self->_queue;
  BSDispatchQueueAssert();
  return [(SUInstallationConstraintMonitorBase *)self unsatisfiedConstraints]== 0;
}

- (unint64_t)unsatisfiedConstraintsWithIgnorableConstraints:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"SUInstallationConstraintMonitorBase.m" lineNumber:100 description:@"Not Implemented"];

  return 0;
}

@end