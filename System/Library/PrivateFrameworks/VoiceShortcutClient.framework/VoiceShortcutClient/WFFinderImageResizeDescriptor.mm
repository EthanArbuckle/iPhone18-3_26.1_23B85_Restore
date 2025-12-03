@interface WFFinderImageResizeDescriptor
- (BOOL)isEqual:(id)equal;
- (WFFinderImageResizeDescriptor)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFFinderImageResizeDescriptor

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[WFFinderImageResizeDescriptor format](self forKey:{"format"), @"format"}];
  [coderCopy encodeInteger:-[WFFinderImageResizeDescriptor size](self forKey:{"size"), @"size"}];
  [coderCopy encodeBool:-[WFFinderImageResizeDescriptor preserveMetadata](self forKey:{"preserveMetadata"), @"preserveMetadata"}];
}

- (WFFinderImageResizeDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"format"];
  v6 = [coderCopy decodeIntegerForKey:@"size"];
  v7 = [coderCopy decodeBoolForKey:@"preserveMetadata"];

  v8 = [(WFFinderImageResizeDescriptor *)self initWithFormat:v5 size:v6 preserveMetadata:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p, Format: %ld, Size: %ld, Preserve Metadata: %d>", v5, self, -[WFFinderImageResizeDescriptor format](self, "format"), -[WFFinderImageResizeDescriptor size](self, "size"), -[WFFinderImageResizeDescriptor preserveMetadata](self, "preserveMetadata")];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    LOBYTE(v10) = 1;
    goto LABEL_11;
  }

  v6 = equalCopy;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = 0;
LABEL_8:
    LOBYTE(v10) = 0;
    goto LABEL_9;
  }

  format = [(WFFinderImageResizeDescriptor *)self format];
  if (format != [(WFFinderImageResizeDescriptor *)v6 format])
  {
    goto LABEL_8;
  }

  v8 = [(WFFinderImageResizeDescriptor *)self size];
  if (v8 != [(WFFinderImageResizeDescriptor *)v6 size])
  {
    goto LABEL_8;
  }

  preserveMetadata = [(WFFinderImageResizeDescriptor *)self preserveMetadata];
  v10 = preserveMetadata ^ [(WFFinderImageResizeDescriptor *)v6 preserveMetadata]^ 1;
LABEL_9:

LABEL_11:
  return v10;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v4 = [v3 combineInteger:{-[WFFinderImageResizeDescriptor format](self, "format")}];
  v5 = [v3 combineInteger:{-[WFFinderImageResizeDescriptor size](self, "size")}];
  v6 = [v3 combineBool:{-[WFFinderImageResizeDescriptor preserveMetadata](self, "preserveMetadata")}];
  v7 = [v3 finalize];

  return v7;
}

@end