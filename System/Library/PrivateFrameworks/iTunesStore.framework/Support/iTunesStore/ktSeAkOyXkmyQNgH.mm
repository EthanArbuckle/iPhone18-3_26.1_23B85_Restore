@interface ktSeAkOyXkmyQNgH
+ (id)sharedInstance;
- (BOOL)l7UrdRfCzeduYqtA:(id)a;
- (id)BFzukpKGO3cStNGp:(id)gp;
- (ktSeAkOyXkmyQNgH)initWithServiceName:(id)name;
- (void)JI0A3nkqsab9cUj8:(id)uj8 completion:(id)completion;
- (void)QeMnG23X94qgz7jT:(id)t hostChallenge:(id)challenge challengeResponse:(id)response seid:(id)seid nonce:(id)nonce completion:(id)completion;
- (void)Z8aAH7stm0EYhyxg:(id)yhyxg dhAnc7b9U376IHnX:(id)x xz5EHXEN4FjlhJbi:(id)jbi uhVTXyAfCFn7u0Ue:(id)ue EQUjQp7JcQbqcPcD:(id)d A5wDLa5TFdFZlz3A:(id)a TJKMyOe6zn5PdGIr:(id)ir eCqgGM0WcnHOslnr:(unint64_t)self0 eCszfxdv3kUXvhgV:(unint64_t)self1 uWp4aZpP2vLhc04Q:(id)self2 QZYtNpvp0hKd248p:(id)self3 oCwPYmtRv8s31KUH:(id)self4 completion:(id)self5;
- (void)ZfE6lVphNUVrZcKx:(id)kx completion:(id)completion;
- (void)evrtH713YbFfEOzk:(id)ozk completion:(id)completion;
- (void)fetchConfigThrowingWithCompletion:(id)completion;
- (void)fetchConfigWithCompletion:(id)completion;
- (void)llNEghuIdfPH7O8I:(BOOL)i all:(BOOL)all pregeneration:(BOOL)pregeneration workflowID:(id)d completion:(id)completion;
- (void)llNEghuIdfPH7O8I:(BOOL)i all:(BOOL)all workflowID:(id)d completion:(id)completion;
- (void)ofLBc0SV56ddaijH:(id)h i7D0Lridvo8oYoNd:(id)nd completion:(id)completion;
- (void)uTtwJoGUgL3N0GVz;
- (void)updateRavioliWithCompletion:(id)completion;
- (void)vffg4lwI2HftPvpO:(id)o;
@end

@implementation ktSeAkOyXkmyQNgH

+ (id)sharedInstance
{
  if (qword_1003841D8 != -1)
  {
    sub_100271DB0();
  }

  v3 = qword_1003841D0;

  return v3;
}

- (ktSeAkOyXkmyQNgH)initWithServiceName:(id)name
{
  nameCopy = name;
  v20.receiver = self;
  v20.super_class = ktSeAkOyXkmyQNgH;
  v5 = [(ktSeAkOyXkmyQNgH *)&v20 init];
  if (v5)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    disconnectionCallbacks = v5->_disconnectionCallbacks;
    v5->_disconnectionCallbacks = v6;

    v8 = dispatch_queue_create("com.apple.asd.interrupt", 0);
    syncQueue = v5->_syncQueue;
    v5->_syncQueue = v8;

    v10 = [[NSXPCConnection alloc] initWithMachServiceName:nameCopy options:4096];
    connection = v5->_connection;
    v5->_connection = v10;

    v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___YPrbz3IaOz1JRlMc];
    [(NSXPCConnection *)v5->_connection setRemoteObjectInterface:v12];

    objc_initWeak(&location, v5);
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_10026E778;
    v17 = &unk_100333058;
    objc_copyWeak(&v18, &location);
    [(NSXPCConnection *)v5->_connection setInterruptionHandler:&v14];
    [(NSXPCConnection *)v5->_connection resume:v14];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)JI0A3nkqsab9cUj8:(id)uj8 completion:(id)completion
{
  uj8Copy = uj8;
  completionCopy = completion;
  v8 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&stru_100333098];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10026E998;
  v21[3] = &unk_1003330C0;
  v9 = completionCopy;
  v22 = v9;
  v10 = objc_retainBlock(v21);
  v11 = [(ktSeAkOyXkmyQNgH *)self BFzukpKGO3cStNGp:v10];
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10026E9B4;
  v16[3] = &unk_1003330E8;
  objc_copyWeak(&v19, &location);
  v12 = v11;
  v17 = v12;
  v13 = v9;
  v18 = v13;
  v14 = objc_retainBlock(v16);
  toDictionary = [uj8Copy toDictionary];
  [v8 k0p7Rchr49btq6wB:toDictionary HY6FXG20397zwmVg:v14];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)QeMnG23X94qgz7jT:(id)t hostChallenge:(id)challenge challengeResponse:(id)response seid:(id)seid nonce:(id)nonce completion:(id)completion
{
  tCopy = t;
  challengeCopy = challenge;
  responseCopy = response;
  seidCopy = seid;
  nonceCopy = nonce;
  completionCopy = completion;
  v17 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&stru_100333108];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10026EC90;
  v32[3] = &unk_1003330C0;
  v18 = completionCopy;
  v33 = v18;
  v19 = objc_retainBlock(v32);
  v20 = [(ktSeAkOyXkmyQNgH *)self BFzukpKGO3cStNGp:v19];
  objc_initWeak(&location, self);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10026ECA8;
  v27[3] = &unk_100333130;
  objc_copyWeak(&v30, &location);
  v21 = v20;
  v28 = v21;
  v22 = v18;
  v29 = v22;
  v23 = objc_retainBlock(v27);
  [v17 Me7YKKqFAKjegMFz:tCopy hostChallenge:challengeCopy challengeResponse:responseCopy seid:seidCopy nonce:nonceCopy HY6FXG20397zwmVg:v23];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

- (void)ZfE6lVphNUVrZcKx:(id)kx completion:(id)completion
{
  kxCopy = kx;
  completionCopy = completion;
  v8 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&stru_100333150];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10026EF04;
  v20[3] = &unk_1003330C0;
  v9 = completionCopy;
  v21 = v9;
  v10 = objc_retainBlock(v20);
  v11 = [(ktSeAkOyXkmyQNgH *)self BFzukpKGO3cStNGp:v10];
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10026EF20;
  v15[3] = &unk_100333178;
  objc_copyWeak(&v18, &location);
  v12 = v11;
  v16 = v12;
  v13 = v9;
  v17 = v13;
  v14 = objc_retainBlock(v15);
  [v8 f9MGfLOgnHPuKTrU:kxCopy HY6FXG20397zwmVg:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)vffg4lwI2HftPvpO:(id)o
{
  oCopy = o;
  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&stru_100333198];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10026F168;
  v17[3] = &unk_1003330C0;
  v6 = oCopy;
  v18 = v6;
  v7 = objc_retainBlock(v17);
  v8 = [(ktSeAkOyXkmyQNgH *)self BFzukpKGO3cStNGp:v7];
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10026F180;
  v12[3] = &unk_100333130;
  objc_copyWeak(&v15, &location);
  v9 = v8;
  v13 = v9;
  v10 = v6;
  v14 = v10;
  v11 = objc_retainBlock(v12);
  [v5 xs00laTiKIpDUzDP:v11];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)Z8aAH7stm0EYhyxg:(id)yhyxg dhAnc7b9U376IHnX:(id)x xz5EHXEN4FjlhJbi:(id)jbi uhVTXyAfCFn7u0Ue:(id)ue EQUjQp7JcQbqcPcD:(id)d A5wDLa5TFdFZlz3A:(id)a TJKMyOe6zn5PdGIr:(id)ir eCqgGM0WcnHOslnr:(unint64_t)self0 eCszfxdv3kUXvhgV:(unint64_t)self1 uWp4aZpP2vLhc04Q:(id)self2 QZYtNpvp0hKd248p:(id)self3 oCwPYmtRv8s31KUH:(id)self4 completion:(id)self5
{
  yhyxgCopy = yhyxg;
  xCopy = x;
  jbiCopy = jbi;
  ueCopy = ue;
  dCopy = d;
  aCopy = a;
  irCopy = ir;
  qCopy = q;
  kd248pCopy = kd248p;
  hCopy = h;
  completionCopy = completion;
  v33 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&stru_1003331B8];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_10026F4E4;
  v44[3] = &unk_1003330C0;
  v27 = completionCopy;
  v45 = v27;
  v28 = objc_retainBlock(v44);
  v29 = [(ktSeAkOyXkmyQNgH *)self BFzukpKGO3cStNGp:v28];
  objc_initWeak(&location, self);
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10026F508;
  v39[3] = &unk_1003331E0;
  objc_copyWeak(&v42, &location);
  v30 = v29;
  v40 = v30;
  v31 = v27;
  v41 = v31;
  v32 = objc_retainBlock(v39);
  [v33 sPLljm0ZB9z7TiKd:yhyxgCopy nSLeS2inTAbpsUeZ:xCopy noUfOiGjp1iQmKZX:jbiCopy pPGyXmlDbN3mzzHm:ueCopy iSOZt67ioKsVcqQZ:irCopy hjCrdFOLMJN0Cc5Q:oslnr lE40aye8U2u533Ka:v JRuZv6Feh9qwrGmN:qCopy Wn0aIR2B54NCtGQc:kd248pCopy B3l3lS18BITy5E4L:hCopy UywAszL6AB8Y6LTJ:v32 uNao9X8A82jVmQkK:? completion:?];

  objc_destroyWeak(&v42);
  objc_destroyWeak(&location);
}

- (void)updateRavioliWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&stru_100333200];
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10026F778;
  v15[3] = &unk_1003330C0;
  v6 = completionCopy;
  v16 = v6;
  v7 = objc_retainBlock(v15);
  v8 = [(ktSeAkOyXkmyQNgH *)self BFzukpKGO3cStNGp:v7];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10026F788;
  v11[3] = &unk_100333228;
  objc_copyWeak(&v14, &location);
  v9 = v8;
  v12 = v9;
  v10 = v6;
  v13 = v10;
  [v5 k4eQYhyzyebbQqys:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)fetchConfigThrowingWithCompletion:(id)completion
{
  completionCopy = completion;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10026FACC;
  v27 = sub_10026FADC;
  v28 = 0;
  connection = self->_connection;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10026FAE4;
  v22[3] = &unk_100333250;
  v22[4] = &v23;
  v6 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v22];
  v7 = v24[5];
  if (!(v7 | v6))
  {
    v8 = [NSString stringWithUTF8String:kCoreASErrorDomainCA];
    v9 = [NSError errorWithDomain:v8 code:-32 userInfo:0];
    v10 = v24[5];
    v24[5] = v9;

    v7 = v24[5];
  }

  if (v7)
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    objc_initWeak(&location, self);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10026FAF4;
    v19[3] = &unk_1003330C0;
    v11 = completionCopy;
    v20 = v11;
    v12 = objc_retainBlock(v19);
    v13 = [(ktSeAkOyXkmyQNgH *)self BFzukpKGO3cStNGp:v12];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10026FB0C;
    v15[3] = &unk_100333278;
    objc_copyWeak(&v18, &location);
    v14 = v13;
    v16 = v14;
    v17 = v11;
    [v6 fetchConfigWithCompletionXPC:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  _Block_object_dispose(&v23, 8);
}

- (void)fetchConfigWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&stru_100333298];
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10026FD2C;
  v15[3] = &unk_1003330C0;
  v6 = completionCopy;
  v16 = v6;
  v7 = objc_retainBlock(v15);
  v8 = [(ktSeAkOyXkmyQNgH *)self BFzukpKGO3cStNGp:v7];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10026FD40;
  v11[3] = &unk_100333278;
  objc_copyWeak(&v14, &location);
  v9 = v8;
  v12 = v9;
  v10 = v6;
  v13 = v10;
  [v5 fetchConfigWithCompletionXPC:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)llNEghuIdfPH7O8I:(BOOL)i all:(BOOL)all workflowID:(id)d completion:(id)completion
{
  v7 = kCoreASErrorDomainCA;
  completionCopy = completion;
  v9 = [NSString stringWithUTF8String:v7];
  v12 = NSLocalizedDescriptionKey;
  v13 = @"Not implemented";
  v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v11 = [NSError errorWithDomain:v9 code:-27006 userInfo:v10];
  (*(completion + 2))(completionCopy, v11);
}

- (void)evrtH713YbFfEOzk:(id)ozk completion:(id)completion
{
  v5 = kCoreASErrorDomainCA;
  completionCopy = completion;
  v7 = [NSString stringWithUTF8String:v5];
  v10 = NSLocalizedDescriptionKey;
  v11 = @"Not implemented";
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v9 = [NSError errorWithDomain:v7 code:-27006 userInfo:v8];
  (*(completion + 2))(completionCopy, 0, v9);
}

- (void)ofLBc0SV56ddaijH:(id)h i7D0Lridvo8oYoNd:(id)nd completion:(id)completion
{
  v6 = kCoreASErrorDomainCA;
  completionCopy = completion;
  v8 = [NSString stringWithUTF8String:v6];
  v11 = NSLocalizedDescriptionKey;
  v12 = @"Not implemented";
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v10 = [NSError errorWithDomain:v8 code:-27006 userInfo:v9];
  (*(completion + 2))(completionCopy, 0, v10);
}

- (void)llNEghuIdfPH7O8I:(BOOL)i all:(BOOL)all pregeneration:(BOOL)pregeneration workflowID:(id)d completion:(id)completion
{
  v8 = kCoreASErrorDomainCA;
  completionCopy = completion;
  v10 = [NSString stringWithUTF8String:v8];
  v13 = NSLocalizedDescriptionKey;
  v14 = @"Not implemented";
  v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v12 = [NSError errorWithDomain:v10 code:-27006 userInfo:v11];
  (*(completion + 2))(completionCopy, v12);
}

- (id)BFzukpKGO3cStNGp:(id)gp
{
  gpCopy = gp;
  v5 = +[NSUUID UUID];
  uUIDString = [v5 UUIDString];

  syncQueue = self->_syncQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002702F4;
  block[3] = &unk_1003332C0;
  block[4] = self;
  v15 = gpCopy;
  v8 = uUIDString;
  v14 = v8;
  v9 = gpCopy;
  dispatch_sync(syncQueue, block);
  v10 = v14;
  v11 = v8;

  return v8;
}

- (BOOL)l7UrdRfCzeduYqtA:(id)a
{
  aCopy = a;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  syncQueue = self->_syncQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100270420;
  block[3] = &unk_1003332E8;
  v9 = aCopy;
  v10 = &v11;
  block[4] = self;
  v6 = aCopy;
  dispatch_sync(syncQueue, block);
  LOBYTE(syncQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return syncQueue;
}

- (void)uTtwJoGUgL3N0GVz
{
  syncQueue = self->_syncQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002704F4;
  block[3] = &unk_100333310;
  block[4] = self;
  dispatch_sync(syncQueue, block);
}

@end