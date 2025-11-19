@interface OKDocumentImportOperation
- (OKDocumentImportOperation)init;
- (OKDocumentImportOperation)initWithDocument:(id)a3 resourceURL:(id)a4 importedResourceURL:(id)a5 opaque:(BOOL)a6;
- (unint64_t)launchOperation;
- (void)cancelOperation;
- (void)cleanupOperation;
- (void)dealloc;
- (void)finishOperation;
@end

@implementation OKDocumentImportOperation

- (OKDocumentImportOperation)init
{
  v3.receiver = self;
  v3.super_class = OKDocumentImportOperation;
  result = [(OFNSOperation *)&v3 init];
  if (result)
  {
    result->_document = 0;
    result->_resourceURL = 0;
    result->_importedResourceURL = 0;
    result->_opaque = 1;
    result->_temporaryDownloadedMediaFileURL = 0;
    result->_temporaryTranscodedMediaFileURL = 0;
    result->_temporaryThumbnailMediaFileURL = 0;
  }

  return result;
}

- (OKDocumentImportOperation)initWithDocument:(id)a3 resourceURL:(id)a4 importedResourceURL:(id)a5 opaque:(BOOL)a6
{
  v10 = [(OKDocumentImportOperation *)self init];
  if (v10)
  {
    v10->_document = a3;
    v10->_resourceURL = [a4 copy];
    v10->_importedResourceURL = [a5 copy];
    v10->_opaque = a6;
  }

  return v10;
}

- (void)dealloc
{
  document = self->_document;
  if (document)
  {

    self->_document = 0;
  }

  resourceURL = self->_resourceURL;
  if (resourceURL)
  {

    self->_resourceURL = 0;
  }

  importedResourceURL = self->_importedResourceURL;
  if (importedResourceURL)
  {

    self->_importedResourceURL = 0;
  }

  temporaryDownloadedMediaFileURL = self->_temporaryDownloadedMediaFileURL;
  if (temporaryDownloadedMediaFileURL)
  {

    self->_temporaryDownloadedMediaFileURL = 0;
  }

  temporaryTranscodedMediaFileURL = self->_temporaryTranscodedMediaFileURL;
  if (temporaryTranscodedMediaFileURL)
  {

    self->_temporaryTranscodedMediaFileURL = 0;
  }

  temporaryThumbnailMediaFileURL = self->_temporaryThumbnailMediaFileURL;
  if (temporaryThumbnailMediaFileURL)
  {

    self->_temporaryThumbnailMediaFileURL = 0;
  }

  v9.receiver = self;
  v9.super_class = OKDocumentImportOperation;
  [(OFNSOperation *)&v9 dealloc];
}

- (unint64_t)launchOperation
{
  v87.receiver = self;
  v87.super_class = OKDocumentImportOperation;
  if ([(OFNSOperation *)&v87 launchOperation]!= 1)
  {
    goto LABEL_23;
  }

  v3 = [(OKPresentation *)[(OKDocument *)self->_document presentation] mediaItemForURL:self->_resourceURL];
  if (!v3)
  {
    -[OFNSOperation setError:](self, "setError:", [MEMORY[0x277CCA9B8] errorWithDescription:@"Resource URL cannot be resolved"]);
LABEL_23:
    [(OFNSOperation *)self finish];
    return 0;
  }

  v4 = v3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v81 = 0;
  v82 = &v81;
  v83 = 0x3052000000;
  v84 = __Block_byref_object_copy__1;
  v85 = __Block_byref_object_dispose__1;
  v86 = 0;
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = __44__OKDocumentImportOperation_launchOperation__block_invoke;
  v80[3] = &unk_279C8EBE0;
  v80[4] = v5;
  v80[5] = &v81;
  v6 = [v4 metadataWithCompletionHandler:v80 force:0 cache:0];
  if (![(OFNSOperation *)self performSubOperationSynchronously:v6 progressBlock:0 timeout:-1]|| !v82[5])
  {
    if ([v6 error])
    {
      v15 = [v6 error];
    }

    else
    {
      v15 = [MEMORY[0x277CCA9B8] errorWithDescription:@"Internal Error"];
    }

    [(OFNSOperation *)self setError:v15];
    goto LABEL_22;
  }

  v7 = [objc_msgSend(v5 valueForKey:{@"Media Type", "intValue"}];
  if (v7 == 2 && ([v82[5] hasRegionsOfInterest] & 1) == 0 && (objc_msgSend(v82[5], "regionsOfInterestDetected") & 1) == 0)
  {
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __44__OKDocumentImportOperation_launchOperation__block_invoke_2;
    v79[3] = &unk_279C8EC08;
    v79[4] = v5;
    v8 = [v4 detectRegionsOfInterestWithCompletionHandler:v79 force:0 cache:0 colorSpace:0];
    if (![(OFNSOperation *)self performSubOperationSynchronously:v8 progressBlock:0 timeout:-1])
    {
      v26 = v82[5];
      if (v26)
      {

        v82[5] = 0;
      }

      if ([v8 error])
      {
        v27 = [v8 error];
      }

      else
      {
        v27 = [MEMORY[0x277CCA9B8] errorWithDescription:@"Internal Error"];
      }

      [(OFNSOperation *)self setError:v27];
      goto LABEL_22;
    }
  }

  v9 = v82[5];
  if (v9)
  {

    v82[5] = 0;
  }

  if (([(OKDocumentImportOperation *)self isCancelled]& 1) != 0)
  {
LABEL_22:
    _Block_object_dispose(&v81, 8);
    goto LABEL_23;
  }

  LODWORD(v10) = 1045220557;
  [(OFNSOperation *)self setProgress:v10];
  [v5 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", self->_opaque), @"Opaque"}];
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 0;
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __44__OKDocumentImportOperation_launchOperation__block_invoke_3;
  v74[3] = &unk_279C8EC30;
  v74[4] = &v75;
  v11 = [v4 thumbnailImageForResolution:1 aspectRatio:0 scale:v74 quality:0 colorSpace:0 completionHandler:1.0 force:1.0 cache:1.0];
  if (v7 != 1)
  {
    v12 = v11;
    if (![(OFNSOperation *)self performSubOperationSynchronously:v11 progressBlock:0 timeout:-1])
    {
      v18 = v76[3];
      if (v18)
      {
        CGImageRelease(v18);
        v76[3] = 0;
      }

      if ([v12 error])
      {
        v19 = [v12 error];
LABEL_67:
        [(OFNSOperation *)self setError:v19];
        goto LABEL_73;
      }

      v17 = @"Internal Error";
      goto LABEL_66;
    }
  }

  if (!v76[3])
  {
    if ((v7 & 0xFFFFFFFE) != 2)
    {
      v20 = 0;
      goto LABEL_36;
    }

    v17 = @"Media thumbnail does not exist";
LABEL_66:
    v19 = [MEMORY[0x277CCA9B8] errorWithDescription:v17];
    goto LABEL_67;
  }

  if (self->_opaque)
  {
    v13 = OFCGImageJPEGRepresentation();
    v14 = MEMORY[0x277CC20C8];
  }

  else
  {
    v13 = OFCGImagePNGRepresentation();
    v14 = MEMORY[0x277CC2120];
  }

  v20 = *v14;
  v66 = 0;
  -[OKDocumentImportOperation setTemporaryThumbnailMediaFileURL:](self, "setTemporaryThumbnailMediaFileURL:", [MEMORY[0x277CCAA00] temporaryFileURLWithExtension:OFUTTypeExtensionForUTI()]);
  v21 = [v13 writeToURL:self->_temporaryThumbnailMediaFileURL options:1 error:&v66];
  v22 = v76[3];
  if (v22)
  {
    CGImageRelease(v22);
    v76[3] = 0;
  }

  if (!v21)
  {
    [(OFNSOperation *)self setError:v66];
LABEL_73:
    _Block_object_dispose(&v75, 8);
    goto LABEL_22;
  }

LABEL_36:
  if (([(OKDocumentImportOperation *)self isCancelled]& 1) != 0)
  {
    goto LABEL_73;
  }

  if (v7 != 2)
  {
    if (v7 == 1)
    {
      v66 = 0;
      v67 = &v66;
      v68 = 0x3052000000;
      v69 = __Block_byref_object_copy__1;
      v70 = __Block_byref_object_dispose__1;
      v71 = 0;
      if (([objc_opt_class() isRemote] & 1) == 0)
      {
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __44__OKDocumentImportOperation_launchOperation__block_invoke_9;
        v61[3] = &unk_279C8EC58;
        v61[4] = &v66;
        v36 = [v4 resourceURLWithCompletionHandler:v61];
        v37 = [(OFNSOperation *)self performSubOperationSynchronously:v36 progressBlock:0 timeout:-1];
        v38 = v67[5];
        if (!v37)
        {
          if (v38)
          {

            v67[5] = 0;
          }

          if ([v36 error])
          {
            v54 = [v36 error];
          }

          else
          {
            v54 = [MEMORY[0x277CCA9B8] errorWithDescription:@"Internal Error"];
          }

          [(OFNSOperation *)self setError:v54];
          goto LABEL_72;
        }

        v39 = v38;
      }

      v40 = v67[5];
      if (v40)
      {
        temporaryDownloadedMediaFileURL = [MEMORY[0x277CBEBC0] URLWithString:v67[5]];
      }

      else
      {
        v48 = [MEMORY[0x277CBEBC0] fileURLWithPath:NSTemporaryDirectory()];
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __44__OKDocumentImportOperation_launchOperation__block_invoke_10;
        v60[3] = &unk_279C8EC80;
        v60[4] = self;
        v49 = [v4 importMediaToDirectoryURL:v48 completionHandler:v60];
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __44__OKDocumentImportOperation_launchOperation__block_invoke_11;
        v59[3] = &unk_279C8ECA8;
        v59[4] = self;
        if (![(OFNSOperation *)self performSubOperationSynchronously:v49 progressBlock:v59 timeout:-1])
        {
          if ([v49 error])
          {
            v56 = [v49 error];
          }

          else
          {
            v56 = [MEMORY[0x277CCA9B8] errorWithDescription:@"Internal Error"];
          }

          [(OFNSOperation *)self setError:v56];
          goto LABEL_72;
        }

        temporaryDownloadedMediaFileURL = self->_temporaryDownloadedMediaFileURL;
      }

      if (!temporaryDownloadedMediaFileURL)
      {
        -[OFNSOperation setError:](self, "setError:", [MEMORY[0x277CCA9B8] errorWithDescription:@"Media does not exist"]);
        goto LABEL_72;
      }

      v72 = 0;
      v43 = *MEMORY[0x277CE5D68];
      -[OKDocumentImportOperation setTemporaryTranscodedMediaFileURL:](self, "setTemporaryTranscodedMediaFileURL:", [MEMORY[0x277CCAA00] temporaryFileURLWithExtension:OFUTTypeExtensionForUTI()]);
      v57[9] = MEMORY[0x277D85DD0];
      v57[10] = 3221225472;
      v57[11] = __44__OKDocumentImportOperation_launchOperation__block_invoke_12;
      v57[12] = &unk_279C8ECD0;
      v58 = v40 == 0;
      v57[13] = self;
      if (!OFAVAssetTranscode())
      {
        [(OFNSOperation *)self setError:v72];
        goto LABEL_72;
      }

      goto LABEL_88;
    }

    if (v7 == 3)
    {
      v66 = 0;
      v67 = &v66;
      v68 = 0x3052000000;
      v69 = __Block_byref_object_copy__1;
      v70 = __Block_byref_object_dispose__1;
      v71 = 0;
      if (([objc_opt_class() isRemote] & 1) == 0)
      {
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __44__OKDocumentImportOperation_launchOperation__block_invoke_5;
        v65[3] = &unk_279C8EC58;
        v65[4] = &v66;
        v28 = [v4 resourceURLWithCompletionHandler:v65];
        v29 = [(OFNSOperation *)self performSubOperationSynchronously:v28 progressBlock:0 timeout:-1];
        v30 = v67[5];
        if (!v29)
        {
          if (v30)
          {

            v67[5] = 0;
          }

          if ([v28 error])
          {
            v53 = [v28 error];
          }

          else
          {
            v53 = [MEMORY[0x277CCA9B8] errorWithDescription:@"Internal Error"];
          }

          [(OFNSOperation *)self setError:v53];
          goto LABEL_72;
        }

        v31 = v30;
      }

      v32 = v67[5];
      if (v32)
      {
        v33 = [MEMORY[0x277CBEBC0] URLWithString:v67[5]];
      }

      else
      {
        v46 = [MEMORY[0x277CBEBC0] fileURLWithPath:NSTemporaryDirectory()];
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __44__OKDocumentImportOperation_launchOperation__block_invoke_6;
        v64[3] = &unk_279C8EC80;
        v64[4] = self;
        v47 = [v4 importMediaToDirectoryURL:v46 completionHandler:v64];
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __44__OKDocumentImportOperation_launchOperation__block_invoke_7;
        v63[3] = &unk_279C8ECA8;
        v63[4] = self;
        if (![(OFNSOperation *)self performSubOperationSynchronously:v47 progressBlock:v63 timeout:-1])
        {
          if ([v47 error])
          {
            v55 = [v47 error];
          }

          else
          {
            v55 = [MEMORY[0x277CCA9B8] errorWithDescription:@"Internal Error"];
          }

          [(OFNSOperation *)self setError:v55];
          goto LABEL_72;
        }

        v33 = self->_temporaryDownloadedMediaFileURL;
      }

      if (!v33)
      {
        -[OFNSOperation setError:](self, "setError:", [MEMORY[0x277CCA9B8] errorWithDescription:@"Media does not exist"]);
        goto LABEL_72;
      }

      v72 = 0;
      v43 = *MEMORY[0x277CE5DA8];
      -[OKDocumentImportOperation setTemporaryTranscodedMediaFileURL:](self, "setTemporaryTranscodedMediaFileURL:", [MEMORY[0x277CCAA00] temporaryFileURLWithExtension:OFUTTypeExtensionForUTI()]);
      v61[5] = MEMORY[0x277D85DD0];
      v61[6] = 3221225472;
      v61[7] = __44__OKDocumentImportOperation_launchOperation__block_invoke_8;
      v61[8] = &unk_279C8ECD0;
      v62 = v32 == 0;
      v61[9] = self;
      if (!OFAVAssetTranscode())
      {
        [(OFNSOperation *)self setError:v72];
        goto LABEL_72;
      }

      goto LABEL_88;
    }

    v17 = @"Unsupported media type";
    goto LABEL_66;
  }

  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __44__OKDocumentImportOperation_launchOperation__block_invoke_4;
  v73[3] = &unk_279C8EC30;
  v73[4] = &v66;
  v23 = [v4 thumbnailImageForResolution:2048 aspectRatio:0 scale:v73 quality:0 colorSpace:0 completionHandler:1.0 force:1.0 cache:1.0];
  if (![(OFNSOperation *)self performSubOperationSynchronously:v23 progressBlock:0 timeout:-1])
  {
    v34 = v76[3];
    if (v34)
    {
      CGImageRelease(v34);
      v76[3] = 0;
    }

    if ([v23 error])
    {
      v35 = [v23 error];
LABEL_71:
      [(OFNSOperation *)self setError:v35];
LABEL_72:
      _Block_object_dispose(&v66, 8);
      goto LABEL_73;
    }

    v42 = @"Internal Error";
LABEL_70:
    v35 = [MEMORY[0x277CCA9B8] errorWithDescription:v42];
    goto LABEL_71;
  }

  if (!v67[3])
  {
    v42 = @"Media does not exist";
    goto LABEL_70;
  }

  if (self->_opaque)
  {
    v24 = OFCGImageJPEGRepresentation();
    v25 = MEMORY[0x277CC20C8];
  }

  else
  {
    v24 = OFCGImagePNGRepresentation();
    v25 = MEMORY[0x277CC2120];
  }

  v43 = *v25;
  v72 = 0;
  -[OKDocumentImportOperation setTemporaryTranscodedMediaFileURL:](self, "setTemporaryTranscodedMediaFileURL:", [MEMORY[0x277CCAA00] temporaryFileURLWithExtension:OFUTTypeExtensionForUTI()]);
  v44 = [v24 writeToURL:self->_temporaryTranscodedMediaFileURL options:1 error:&v72];
  v45 = v67[3];
  if (v45)
  {
    CGImageRelease(v45);
    v67[3] = 0;
  }

  if (!v44)
  {
    [(OFNSOperation *)self setError:v72];
    goto LABEL_72;
  }

LABEL_88:
  _Block_object_dispose(&v66, 8);
  if (([(OKDocumentImportOperation *)self isCancelled]& 1) != 0)
  {
    goto LABEL_73;
  }

  LODWORD(v50) = 1061997773;
  [(OFNSOperation *)self setProgress:v50];
  v51 = [(OKDocument *)self->_document _importedResourceDirectoryURLForImportedResourceURL:self->_importedResourceURL];
  document = self->_document;
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __44__OKDocumentImportOperation_launchOperation__block_invoke_13;
  v57[3] = &unk_279C8ED20;
  v57[4] = self;
  v57[5] = v51;
  v57[6] = v5;
  v57[7] = v43;
  v57[8] = v20;
  [(UIDocument *)document performAsynchronousFileAccessUsingBlock:v57];
  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v81, 8);
  return 1;
}

uint64_t __44__OKDocumentImportOperation_launchOperation__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  result = [a2 isCancelled];
  if (!a4 && (result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 40) = a3;
    v8 = *(a1 + 32);
    v9 = [a3 dictionary];

    return [v8 addEntriesFromDictionary:v9];
  }

  return result;
}

uint64_t __44__OKDocumentImportOperation_launchOperation__block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  result = [a2 isCancelled];
  if (!a4 && (result & 1) == 0)
  {
    v8 = *(a1 + 32);
    v9 = [a3 dictionary];

    return [v8 addEntriesFromDictionary:v9];
  }

  return result;
}

CGImageRef __44__OKDocumentImportOperation_launchOperation__block_invoke_3(uint64_t a1, void *a2, CGImage *a3, uint64_t a4)
{
  result = [a2 isCancelled];
  if (a3 && !a4 && !result)
  {
    result = CGImageRetain(a3);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

CGImageRef __44__OKDocumentImportOperation_launchOperation__block_invoke_4(uint64_t a1, void *a2, CGImage *a3, uint64_t a4)
{
  result = [a2 isCancelled];
  if (a3 && !a4 && !result)
  {
    result = CGImageRetain(a3);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

id __44__OKDocumentImportOperation_launchOperation__block_invoke_5(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  result = [a2 isCancelled];
  if (a3 && !a4 && !result)
  {
    result = [a3 absoluteString];
    *(*(*(a1 + 32) + 8) + 40) = result;
  }

  return result;
}

uint64_t __44__OKDocumentImportOperation_launchOperation__block_invoke_6(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [a2 isCancelled];
  if (a3 && !a4 && !result)
  {
    v8 = *(a1 + 32);

    return [v8 setTemporaryDownloadedMediaFileURL:a3];
  }

  return result;
}

uint64_t __44__OKDocumentImportOperation_launchOperation__block_invoke_7(uint64_t a1, double a2, uint64_t a3, _BYTE *a4)
{
  *&a2 = (*&a2 * 0.4) + 0.2;
  [*(a1 + 32) setProgress:a2];
  result = [*(a1 + 32) isCancelled];
  *a4 = result;
  return result;
}

uint64_t __44__OKDocumentImportOperation_launchOperation__block_invoke_8(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = (*&a3 * 0.6) + 0.2;
  *&a3 = (*&a3 * 0.2) + 0.6;
  if (!v5)
  {
    *&a3 = v7;
  }

  [v6 setProgress:a3];
  result = [*(a1 + 32) isCancelled];
  *a2 = result;
  return result;
}

id __44__OKDocumentImportOperation_launchOperation__block_invoke_9(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  result = [a2 isCancelled];
  if (a3 && !a4 && !result)
  {
    result = [a3 absoluteString];
    *(*(*(a1 + 32) + 8) + 40) = result;
  }

  return result;
}

uint64_t __44__OKDocumentImportOperation_launchOperation__block_invoke_10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [a2 isCancelled];
  if (a3 && !a4 && !result)
  {
    v8 = *(a1 + 32);

    return [v8 setTemporaryDownloadedMediaFileURL:a3];
  }

  return result;
}

uint64_t __44__OKDocumentImportOperation_launchOperation__block_invoke_11(uint64_t a1, double a2, uint64_t a3, _BYTE *a4)
{
  *&a2 = (*&a2 * 0.4) + 0.2;
  [*(a1 + 32) setProgress:a2];
  result = [*(a1 + 32) isCancelled];
  *a4 = result;
  return result;
}

uint64_t __44__OKDocumentImportOperation_launchOperation__block_invoke_12(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = (*&a3 * 0.6) + 0.2;
  *&a3 = (*&a3 * 0.2) + 0.6;
  if (!v5)
  {
    *&a3 = v7;
  }

  [v6 setProgress:a3];
  result = [*(a1 + 32) isCancelled];
  *a2 = result;
  return result;
}

uint64_t __44__OKDocumentImportOperation_launchOperation__block_invoke_13(uint64_t a1)
{
  if ([*(a1 + 32) isCancelled])
  {
    v2 = *(a1 + 32);

    return [v2 finish];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:*(*(a1 + 32) + 392)];
    v10 = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__OKDocumentImportOperation_launchOperation__block_invoke_14;
    v7[3] = &unk_279C8ECF8;
    v5 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = *(a1 + 48);
    v9 = *(a1 + 64);
    [v4 coordinateWritingItemAtURL:v5 options:8 error:&v10 byAccessor:v7];

    if (v10)
    {
      [*(a1 + 32) setError:?];
    }

    if (([*(a1 + 32) isCancelled] & 1) == 0 && !objc_msgSend(*(a1 + 32), "error"))
    {
      LODWORD(v6) = 1.0;
      [*(a1 + 32) setProgress:v6];
    }

    return [*(a1 + 32) finish];
  }
}

void __44__OKDocumentImportOperation_launchOperation__block_invoke_14(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v5 = [*(*(a1 + 32) + 392) _importedThumbnailsURLWithImportedResourceDirectoryURL:a2];
  v11 = 0;
  if (([v4 fileExistsAtPath:{objc_msgSend(v5, "path")}] & 1) == 0 && (objc_msgSend(v4, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v5, 1, 0, &v11) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = [*(*(a1 + 32) + 392) _importedMetadataURLWithImportedResourceDirectoryURL:a2];
  v7 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:*(a1 + 40)];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v6];
  if (v8)
  {
    [v7 addEntriesFromDictionary:v8];
  }

  [v7 setObject:*(a1 + 48) forKey:@"UTI"];
  if (([v7 writeToURL:v6 atomically:1] & 1) == 0)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDescription:@"Failed to write metadata"];
    goto LABEL_11;
  }

  if (([v4 moveItemAtURL:*(*(a1 + 32) + 432) toURL:objc_msgSend(*(*(a1 + 32) + 392) error:{"_importedMediaURLForImportedResourceURL:withImportedResourceDirectoryURL:withExtension:", *(*(a1 + 32) + 408), a2, OFUTTypeExtensionForUTI()), &v11}] & 1) == 0 || (v9 = *(a1 + 32), *(v9 + 440)) && (objc_msgSend(v4, "moveItemAtURL:toURL:error:", *(*(a1 + 32) + 440), objc_msgSend(*(v9 + 392), "_importedThumbnailURLForImportedResourceURL:withImportedResourceDirectoryURL:withExtension:", *(v9 + 408), a2, OFUTTypeExtensionForUTI()), &v11) & 1) == 0)
  {
LABEL_9:
    v10 = v11;
LABEL_11:
    [*(a1 + 32) setError:v10];
  }
}

- (void)cancelOperation
{
  v2.receiver = self;
  v2.super_class = OKDocumentImportOperation;
  [(OFNSOperation *)&v2 cancelOperation];
}

- (void)finishOperation
{
  v3.receiver = self;
  v3.super_class = OKDocumentImportOperation;
  [(OFNSOperation *)&v3 finishOperation];
  if (([(OKDocumentImportOperation *)self isCancelled]& 1) == 0)
  {
    [(OFNSOperation *)self error];
  }
}

- (void)cleanupOperation
{
  v13.receiver = self;
  v13.super_class = OKDocumentImportOperation;
  [(OFNSOperation *)&v13 cleanupOperation];
  document = self->_document;
  if (document)
  {

    self->_document = 0;
  }

  resourceURL = self->_resourceURL;
  if (resourceURL)
  {

    self->_resourceURL = 0;
  }

  importedResourceURL = self->_importedResourceURL;
  if (importedResourceURL)
  {

    self->_importedResourceURL = 0;
  }

  v6 = objc_alloc_init(MEMORY[0x277CCAA00]);
  temporaryDownloadedMediaFileURL = self->_temporaryDownloadedMediaFileURL;
  if (temporaryDownloadedMediaFileURL && [v6 fileExistsAtPath:{-[NSURL path](temporaryDownloadedMediaFileURL, "path")}])
  {
    [v6 removeItemAtURL:self->_temporaryDownloadedMediaFileURL error:0];
  }

  temporaryTranscodedMediaFileURL = self->_temporaryTranscodedMediaFileURL;
  if (temporaryTranscodedMediaFileURL && [v6 fileExistsAtPath:{-[NSURL path](temporaryTranscodedMediaFileURL, "path")}])
  {
    [v6 removeItemAtURL:self->_temporaryTranscodedMediaFileURL error:0];
  }

  temporaryThumbnailMediaFileURL = self->_temporaryThumbnailMediaFileURL;
  if (temporaryThumbnailMediaFileURL && [v6 fileExistsAtPath:{-[NSURL path](temporaryThumbnailMediaFileURL, "path")}])
  {
    [v6 removeItemAtURL:self->_temporaryThumbnailMediaFileURL error:0];
  }

  v10 = self->_temporaryDownloadedMediaFileURL;
  if (v10)
  {

    self->_temporaryDownloadedMediaFileURL = 0;
  }

  v11 = self->_temporaryTranscodedMediaFileURL;
  if (v11)
  {

    self->_temporaryTranscodedMediaFileURL = 0;
  }

  v12 = self->_temporaryThumbnailMediaFileURL;
  if (v12)
  {

    self->_temporaryThumbnailMediaFileURL = 0;
  }
}

@end