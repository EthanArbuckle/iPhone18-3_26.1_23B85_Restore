@interface PUDebugImageTableViewController
- (id)jobNumberFromPath:(id)path;
- (id)pidFromPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PUDebugImageTableViewController

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5 = -[NSArray objectAtIndex:](self->_tableData, "objectAtIndex:", [path row]);
  v6 = MEMORY[0x1E695DFF8];
  v7 = [v5 objectForKeyedSubscript:@"path"];
  v8 = [v6 fileURLWithPath:v7];

  pathExtension = [v8 pathExtension];
  lowercaseString = [pathExtension lowercaseString];
  v11 = [lowercaseString isEqual:@"pdf"];

  if (v11)
  {
    v12 = CGPDFDocumentCreateWithURL(v8);
    Page = CGPDFDocumentGetPage(v12, 1uLL);
    BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFMediaBox);
    width = BoxRect.size.width;
    height = BoxRect.size.height;
    v16 = BoxRect.size.width * BoxRect.size.height;
    if (v16 >= 0x8F0D181)
    {
      v17 = 150000000.0 / v16;
      width = (v17 * width);
      height = (v17 * height);
    }

    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v19 = CGBitmapContextCreate(0, width, height, 8uLL, 0, DeviceRGB, 2u);
    CGContextScaleCTM(v19, 1.0, 1.0);
    v53.size.width = width;
    v53.size.height = height;
    memset(&v51, 0, sizeof(v51));
    v53.origin.x = 0.0;
    v53.origin.y = 0.0;
    CGPDFPageGetDrawingTransform(&v51, Page, kCGPDFCropBox, v53, 0, 1);
    transform = v51;
    CGContextConcatCTM(v19, &transform);
    CGContextDrawPDFPage(v19, Page);
    CGPDFDocumentRelease(v12);
    Image = CGBitmapContextCreateImage(v19);
    v21 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:Image scale:0 orientation:1.0];
    CGImageRelease(Image);
    CGContextRelease(v19);
    CGColorSpaceRelease(DeviceRGB);
    view = [(PUDebugImageTableViewController *)self view];
    [view bounds];
    v24 = v23;
    [v21 size];
    v26 = v24 / v25;

    view2 = [(PUDebugImageTableViewController *)self view];
    [view2 bounds];
    v29 = v28;
    [v21 size];
    v31 = v29 / v30;

    [v21 size];
    v33 = v32;
    [v21 size];
    v35 = [[PUScrollImageView alloc] initWithFrame:v21 image:0.0, 0.0, v33, v34];
    v36 = v35;
    if (v26 >= v31)
    {
      v37 = v31;
    }

    else
    {
      v37 = v26;
    }

    [(PUScrollImageView *)v35 setMinimumZoomScale:v37];
    [(PUScrollImageView *)v36 setMaximumZoomScale:6.0];
    [(PUScrollImageView *)v36 setZoomScale:1 animated:v37];
    v38 = objc_alloc_init(MEMORY[0x1E69DD258]);
    [v38 setView:v36];
    [(PUDebugImageTableViewController *)self presentViewController:v38 animated:1 completion:0];
  }

  else
  {
    pathExtension2 = [v8 pathExtension];
    lowercaseString2 = [pathExtension2 lowercaseString];
    v41 = [lowercaseString2 isEqual:@"txt"];

    if (v41)
    {
      v42 = MEMORY[0x1E696AEC0];
      path = [v8 path];
      v49 = 0;
      v44 = [v42 stringWithContentsOfFile:path encoding:4 error:&v49];
      v45 = v49;

      if (v45)
      {
        NSLog(&cfstr_Purenderdebugc.isa, v45);
      }

      else
      {
        v46 = [objc_alloc(MEMORY[0x1E69DD168]) initWithFrame:{0.0, 0.0, 1024.0, 1024.0}];
        [v46 setText:v44];
        [v46 setMinimumZoomScale:0.5];
        [v46 setMaximumZoomScale:1.5];
        v47 = [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:12.0 weight:*MEMORY[0x1E69DB988]];
        [v46 setFont:v47];

        v48 = objc_alloc_init(MEMORY[0x1E69DD258]);
        [v48 setView:v46];
        [(PUDebugImageTableViewController *)self presentViewController:v48 animated:1 completion:0];
      }
    }
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"SimpleTableItem"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"SimpleTableItem"];
  }

  v38 = pathCopy;
  v8 = -[NSArray objectAtIndex:](self->_tableData, "objectAtIndex:", [pathCopy row]);
  v9 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v9 setDateFormat:@"MMM dd, HH:mm:ss"];
  v10 = [v8 objectForKeyedSubscript:@"date"];
  v37 = [v9 stringFromDate:v10];

  v11 = MEMORY[0x1E696AAF0];
  v12 = [v8 objectForKeyedSubscript:@"size"];
  v36 = [v11 stringFromByteCount:objc_msgSend(v12 countStyle:{"unsignedLongLongValue"), 0}];

  v13 = [v8 objectForKeyedSubscript:@"filename"];
  v14 = [v13 rangeOfString:@"_"];
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [v13 substringFromIndex:v14 + 1];

    v13 = v15;
  }

  v16 = [v8 objectForKeyedSubscript:@"jobNumber"];
  if (v16)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = [v8 objectForKeyedSubscript:@"jobNumber"];
    v19 = [v17 stringWithFormat:@"job #%@, ", v18];
  }

  else
  {
    v19 = &stru_1F2AC6818;
  }

  v20 = [v8 objectForKeyedSubscript:@"pid"];
  if (v20)
  {
    v21 = MEMORY[0x1E696AEC0];
    v22 = [v8 objectForKeyedSubscript:@"pid"];
    v23 = [v21 stringWithFormat:@"pid %@, ", v22];
  }

  else
  {
    v23 = &stru_1F2AC6818;
  }

  v24 = MEMORY[0x1E695DFF8];
  v25 = [v8 objectForKeyedSubscript:@"filename"];
  v26 = [v24 fileURLWithPath:v25];

  pathExtension = [v26 pathExtension];
  lowercaseString = [pathExtension lowercaseString];
  v29 = [lowercaseString isEqual:@"pdf"];

  textLabel = [v7 textLabel];
  [textLabel setText:v13];

  if (v29)
  {
    [MEMORY[0x1E69DC888] blueColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] blackColor];
  }
  v31 = ;
  textLabel2 = [v7 textLabel];
  [textLabel2 setTextColor:v31];

  v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@ (%@)", v23, v19, v37, v36];
  detailTextLabel = [v7 detailTextLabel];
  [detailTextLabel setText:v33];

  return v7;
}

- (void)viewDidLoad
{
  v64 = *MEMORY[0x1E69E9840];
  v62.receiver = self;
  v62.super_class = PUDebugImageTableViewController;
  [(PUDebugImageTableViewController *)&v62 viewDidLoad];
  v2 = +[PURenderDebugController getDebugFiles];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v2;
  v55 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
  if (v55)
  {
    v4 = 0;
    v5 = 0;
    v52 = *MEMORY[0x1E696A308];
    v53 = *v59;
    v51 = *MEMORY[0x1E696A3B8];
    do
    {
      for (i = 0; i != v55; ++i)
      {
        v7 = v3;
        if (*v59 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v58 + 1) + 8 * i);
        pathExtension = [v8 pathExtension];
        lowercaseString = [pathExtension lowercaseString];
        v11 = [lowercaseString isEqual:@"txt"];

        v4 |= v11;
        pathExtension2 = [v8 pathExtension];
        lowercaseString2 = [pathExtension2 lowercaseString];
        LOBYTE(lowercaseString) = [lowercaseString2 isEqual:@"pdf"];

        v5 |= lowercaseString;
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        path = [v8 path];
        v16 = [defaultManager attributesOfItemAtPath:path error:0];

        v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v18 = [v16 objectForKey:v52];
        [v17 setObject:v18 forKeyedSubscript:@"date"];

        v19 = [v16 objectForKey:v51];
        [v17 setObject:v19 forKeyedSubscript:@"size"];

        path2 = [v8 path];
        [v17 setObject:path2 forKeyedSubscript:@"path"];

        path3 = [v8 path];
        v22 = [(PUDebugImageTableViewController *)self pidFromPath:path3];
        [v17 setObject:v22 forKeyedSubscript:@"pid"];

        path4 = [v8 path];
        v24 = [(PUDebugImageTableViewController *)self jobNumberFromPath:path4];
        [v17 setObject:v24 forKeyedSubscript:@"jobNumber"];

        lastPathComponent = [v8 lastPathComponent];
        [v17 setObject:lastPathComponent forKeyedSubscript:@"filename"];

        v3 = v7;
        [v7 addObject:v17];
      }

      v55 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
    }

    while (v55);
    v26 = v5 & v4;
  }

  else
  {
    v26 = 0;
  }

  v27 = [v3 sortedArrayUsingComparator:&__block_literal_global_405];
  v28 = v27;
  if (v26)
  {
    v29 = v3;
    if ([(NSArray *)v27 count])
    {
      v30 = 0;
      v31 = 100000.0;
      do
      {
        v32 = [(NSArray *)v28 objectAtIndexedSubscript:v30];
        v33 = [v32 objectForKeyedSubscript:@"jobNumber"];

        if (v33)
        {
          v34 = [(NSArray *)v28 objectAtIndexedSubscript:v30];
          v35 = [v34 objectForKeyedSubscript:@"jobNumber"];
          [v35 doubleValue];
          v31 = v36;
        }

        else
        {
          v31 = v31 + -0.0001;
        }

        v37 = [MEMORY[0x1E696AD98] numberWithDouble:v31];
        v38 = [(NSArray *)v28 objectAtIndexedSubscript:v30];
        [v38 setObject:v37 forKeyedSubscript:@"jobNumberSimulated"];

        ++v30;
      }

      while ([(NSArray *)v28 count]> v30);
    }

    v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([(NSArray *)v28 count])
    {
      v40 = 0;
      do
      {
        v41 = [(NSArray *)v28 objectAtIndexedSubscript:v40];
        v42 = [v41 objectForKeyedSubscript:@"pid"];

        if (v42)
        {
          v43 = [(NSArray *)v28 objectAtIndexedSubscript:v40];
          v44 = [v43 objectForKeyedSubscript:@"pid"];

          v45 = [(NSArray *)v28 objectAtIndexedSubscript:v40];
          v46 = [v45 objectForKeyedSubscript:@"date"];

          [v39 setObject:v46 forKeyedSubscript:v44];
        }

        ++v40;
      }

      while ([(NSArray *)v28 count]> v40);
    }

    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __46__PUDebugImageTableViewController_viewDidLoad__block_invoke_2;
    v56[3] = &unk_1E7B73E48;
    v57 = v39;
    v47 = v39;
    v3 = v29;
    v48 = [v29 sortedArrayUsingComparator:v56];

    v28 = v48;
  }

  tableData = self->_tableData;
  self->_tableData = v28;
}

uint64_t __46__PUDebugImageTableViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 objectForKeyedSubscript:@"pid"];
  v9 = [v7 objectForKeyedSubscript:v8];

  v10 = *(a1 + 32);
  v11 = [v6 objectForKeyedSubscript:@"pid"];
  v12 = [v10 objectForKeyedSubscript:v11];

  if (!v9 || !v12)
  {
    v13 = [v5 objectForKeyedSubscript:@"date"];

    v14 = [v6 objectForKeyedSubscript:@"date"];

    v9 = v13;
    v12 = v14;
  }

  v15 = [v9 compare:v12];
  if (!v15)
  {
    v16 = [v5 objectForKeyedSubscript:@"jobNumberSimulated"];
    v17 = [v6 objectForKeyedSubscript:@"jobNumberSimulated"];
    v15 = [v16 compare:v17];
  }

  if (v15 == 1)
  {
    v18 = -1;
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

uint64_t __46__PUDebugImageTableViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"date"];
  v6 = [v4 objectForKeyedSubscript:@"date"];

  v7 = [v5 compare:v6];
  if (v7 == 1)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

- (id)pidFromPath:(id)path
{
  v3 = [MEMORY[0x1E695DFF8] URLWithString:path];
  lastPathComponent = [v3 lastPathComponent];

  v5 = [lastPathComponent rangeOfString:@"_"];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = [lastPathComponent substringToIndex:v5];
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v7, "intValue")}];
  }

  return v6;
}

- (id)jobNumberFromPath:(id)path
{
  pathCopy = path;
  v12 = 0;
  v4 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"-j[0-9]+(_|.)" options:0 error:&v12];
  v5 = v12;
  v6 = v5;
  if (v4)
  {
    v7 = [v4 rangeOfFirstMatchInString:pathCopy options:0 range:{0, objc_msgSend(pathCopy, "length")}];
    v9 = 0;
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [pathCopy substringWithRange:{v7 + 2, v8 - 3}];
      v9 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "intValue")}];
    }
  }

  else
  {
    NSLog(&cfstr_Purenderdebugc.isa, v5);
    v9 = 0;
  }

  return v9;
}

@end