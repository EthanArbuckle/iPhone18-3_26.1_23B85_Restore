@interface SUControllerApply
- (SUControllerApply)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUControllerApply

- (SUControllerApply)initWithCoder:(id)a3
{
  v20[6] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SUControllerApply;
  v5 = [(SUControllerApply *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v20[3] = objc_opt_class();
    v20[4] = objc_opt_class();
    v20[5] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:6];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"descriptor"];
    descriptor = v5->_descriptor;
    v5->_descriptor = v9;

    v11 = MEMORY[0x277CBEB98];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    v13 = [v11 setWithArray:v12];

    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"progress"];
    progress = v5->_progress;
    v5->_progress = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SUControllerApply *)self descriptor];
  [v4 encodeObject:v5 forKey:@"descriptor"];

  v6 = [(SUControllerApply *)self progress];
  [v4 encodeObject:v6 forKey:@"progress"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SUControllerApply *)self descriptor];
  v5 = [(SUControllerApply *)self progress];
  v6 = [v3 stringWithFormat:@"Descriptor: %@\nProgress: %@", v4, v5];

  return v6;
}

@end